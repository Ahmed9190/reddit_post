import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_task/core/enums/vote_state.dart';
import 'package:reddit_task/features/post/data/models/post_model.dart';

part 'post.freezed.dart';

@freezed
class Post with _$Post {
  factory Post({
    required int id,
    required String title,
    required String subredditImage,
    required String videoUrl,
    required String userProfilePicture,
    required String userName,
    required String caption,
    required int votesCount,
    required int commentsCount,
    required VoteState voteState,
  }) = _Post;

  factory Post.fromModel(PostModel model) => Post(
        id: model.id,
        title: model.title,
        subredditImage: model.subredditImage,
        videoUrl: model.videoUrl,
        userProfilePicture: model.userProfilePicture,
        userName: model.userName,
        caption: model.caption,
        votesCount: model.votesCount,
        commentsCount: model.commentsCount,
        voteState: VoteState.fromString(model.voteState),
      );
}
