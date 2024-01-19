import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_task/core/state/async_state.dart';
import 'package:reddit_task/features/post/domain/entities/post.dart';
import 'package:video_player/video_player.dart';

part 'post_state.freezed.dart';

@freezed
class PostState with _$PostState {
  factory PostState({
    required AsyncState<Post> post,
    required AsyncState<Unit> action,
    required VideoPlayerController? videoController,
    required bool isCommentsBottomSheetVisible,
  }) = _PostState;

  static final PostState initial = PostState(
    post: const AsyncState.initial(),
    action: const AsyncState.initial(),
    videoController: null,
    isCommentsBottomSheetVisible: false,
  );
}
