import 'package:dartz/dartz.dart';
import 'package:reddit_task/core/abstracts/providers/abstract_provider.dart';
import 'package:reddit_task/core/enums/vote_state.dart';
import 'package:reddit_task/core/extensions/async_state_ext.dart';
import 'package:reddit_task/core/extensions/dartz_ext.dart';
import 'package:reddit_task/core/state/async_state.dart';
import 'package:reddit_task/features/post/domain/entities/post.dart';
import 'package:reddit_task/features/post/domain/repositories/i_post_repository.dart';
import 'package:reddit_task/features/post/presentation/providers/post_state.dart';
import 'package:injectable/injectable.dart';
import 'package:video_player/video_player.dart';

@injectable
class PostProvider extends AbstractProvider<PostState> {
  final IPostRepository _postRepository;

  PostProvider({
    required IPostRepository postRepository,
  })  : _postRepository = postRepository,
        super(PostState.initial);

  Future<AsyncState<Post>> getPost(int id) async {
    state = state.copyWith(post: const AsyncState.loading());

    final eitherPost = await _postRepository.getPost(id);

    state = state.copyWith(post: AsyncState.fromEither(eitherPost));

    eitherPost.handleRight(
      (post) {
        final videoController = VideoPlayerController.networkUrl(
          Uri.parse(post.videoUrl),
        );
        print(post.videoUrl);
        // TODO: handle this
        // videoController.initialize();

        return state = state.copyWith(videoController: videoController);
      },
    );

    return state.post;
  }

  Future<AsyncState<Unit>> onVote({
    required int id,
    required VoteState currentState,
    required int currentVotesCount,
    required VoteState newVoteState,
  }) async {
    final bool isVoteStateSame = currentState == newVoteState;
    final voteStateToUpdate = isVoteStateSame ? VoteState.none : newVoteState;
    final votesCountToUpdate = _calculateVotesCountToUpdate(
      currentState: currentState,
      voteStateToUpdate: voteStateToUpdate,
      currentVotesCount: currentVotesCount,
      isVoteStateSame: isVoteStateSame,
    );

    state = state.copyWith(
      post: state.post.whenSuccess(
        (post) => post.copyWith(
          voteState: voteStateToUpdate,
          votesCount: votesCountToUpdate,
        ),
      ),
      action: const AsyncState.loading(),
    );

    final eitherVote = await _postRepository.vote(id, voteStateToUpdate);

    state = state.copyWith(
      action: AsyncState.fromEither(eitherVote),
    );

    eitherVote.handleLeft((errorMessage) {
      state = state.copyWith(
        post: state.post.whenSuccess(
          (post) => post.copyWith(
            voteState: currentState,
            votesCount: currentVotesCount,
          ),
        ),
      );
    });

    return state.action;
  }

  int _calculateVotesCountToUpdate({
    required VoteState currentState,
    required VoteState voteStateToUpdate,
    required int currentVotesCount,
    required bool isVoteStateSame,
  }) {
    Map<(VoteState, VoteState), int> voteChange = {
      (VoteState.none, VoteState.upvote): 1,
      (VoteState.none, VoteState.downvote): -1,
      (VoteState.upvote, VoteState.none): -1,
      (VoteState.upvote, VoteState.downvote): -2,
      (VoteState.downvote, VoteState.none): 1,
      (VoteState.downvote, VoteState.upvote): 2,
    };

    return currentVotesCount + voteChange[(currentState, voteStateToUpdate)]!;
  }

  void toggleCommentsBottomSheetVisibility() {
    state = state.copyWith(
      isCommentsBottomSheetVisible: !state.isCommentsBottomSheetVisible,
    );
  }
}
