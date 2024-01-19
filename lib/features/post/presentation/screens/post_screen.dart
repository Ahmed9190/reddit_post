import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reddit_task/core/enums/vote_state.dart';
import 'package:reddit_task/core/extensions/async_state_ext.dart';
import 'package:reddit_task/core/injection/injection_container.dart';
import 'package:reddit_task/core/widgets/general/render_async_state.dart';
import 'package:reddit_task/features/post/domain/entities/post.dart';
import 'package:reddit_task/features/post/presentation/providers/post_provider.dart';
import 'package:reddit_task/features/post/presentation/widgets/comments_bottom_sheet.dart';
import 'package:reddit_task/features/post/presentation/widgets/post_actions.dart';
import 'package:reddit_task/features/post/presentation/widgets/post_scaffold.dart';
import 'package:reddit_task/features/post/presentation/widgets/post_title.dart';
import 'package:reddit_task/features/post/presentation/widgets/user_info.dart';
import 'package:reddit_task/features/post/presentation/widgets/video.dart';
import 'package:reddit_task/features/post/presentation/widgets/video_controls.dart';
import 'package:video_player/video_player.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final _postProvider = sl<PostProvider>();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => _postProvider,
      builder: (context, _) {
        final postProvider = context.watch<PostProvider>();

        const int postId = 1;

        return RenderAsyncState(
          asyncState: postProvider.state.post,
          initiate: () => postProvider.getPost(postId),
          successBuilder: (context, post) {
            final Post(
              :title,
              :subredditImage,
              :userProfilePicture,
              :userName,
              :caption,
              :votesCount,
              :commentsCount,
              :voteState,
            ) = post;

            final videoController = postProvider.state.videoController!;
            final isCommentsBottomSheetVisible =
                postProvider.state.isCommentsBottomSheetVisible;

            final Size(height: screenHeight) = MediaQuery.of(context).size;
            // TODO: replace by height from video controller
            final videoHeight = MediaQuery.of(context).size.width * 9 / 16;
            final commentsBottomSheetHeight = screenHeight - videoHeight;

            return PostScaffold(
              isCommentsBottomSheetVisible: isCommentsBottomSheetVisible,
              title: PostTitle(
                title: title,
                imageUrl: subredditImage,
              ),
              threeDotsMenu: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz_rounded, color: Colors.white),
              ),
              video: Video(controller: videoController),
              userInfo: UserInfo(
                userProfilePicture: userProfilePicture,
                userName: userName,
              ),
              caption: Text(
                caption,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              postActions: PostActions(
                voteState: voteState,
                votesCount: votesCount,
                commentsCount: commentsCount,
                onPressedUpvote: () => postProvider
                    .onVote(
                      id: postId,
                      currentState: voteState,
                      currentVotesCount: votesCount,
                      newVoteState: VoteState.upvote,
                    )
                    .showSnackBarIfError(context),
                onPressedDownvote: () => postProvider
                    .onVote(
                      id: postId,
                      currentState: voteState,
                      currentVotesCount: votesCount,
                      newVoteState: VoteState.downvote,
                    )
                    .showSnackBarIfError(context),
                onPressedComment:
                    postProvider.toggleCommentsBottomSheetVisibility,
                onPressedShare: () {},
              ),
              videoControls: VideoControls(
                isPlaying: videoController.value.isPlaying,
                isMuted: videoController.value.volume == 0.0,
                position: videoController.value.position,
                duration: videoController.value.duration,
                onPlayPause: () => videoController.value.isPlaying
                    ? videoController.pause()
                    : videoController.play(),
                onMuteUnmute: () => videoController.value.volume == 0.0
                    ? videoController.setVolume(1.0)
                    : videoController.setVolume(0.0),
                onSeek: videoController.seekTo,
              ),
              commentsBottomSheet: CommentsBottomSheet(
                height: commentsBottomSheetHeight,
              ),
            );
          },
        );
      },
    );
  }
}
