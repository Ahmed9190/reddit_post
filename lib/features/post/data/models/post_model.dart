import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel {
  factory PostModel({
    required int id,
    required String title,
    required String subredditImage,
    required String videoUrl,
    required String userProfilePicture,
    required String userName,
    required String caption,
    required int votesCount,
    required int commentsCount,
    required String voteState,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}
