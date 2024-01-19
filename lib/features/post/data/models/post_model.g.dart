// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostModelImpl _$$PostModelImplFromJson(Map<String, dynamic> json) =>
    _$PostModelImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      subredditImage: json['subredditImage'] as String,
      videoUrl: json['videoUrl'] as String,
      userProfilePicture: json['userProfilePicture'] as String,
      userName: json['userName'] as String,
      caption: json['caption'] as String,
      votesCount: json['votesCount'] as int,
      commentsCount: json['commentsCount'] as int,
      voteState: json['voteState'] as String,
    );

Map<String, dynamic> _$$PostModelImplToJson(_$PostModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subredditImage': instance.subredditImage,
      'videoUrl': instance.videoUrl,
      'userProfilePicture': instance.userProfilePicture,
      'userName': instance.userName,
      'caption': instance.caption,
      'votesCount': instance.votesCount,
      'commentsCount': instance.commentsCount,
      'voteState': instance.voteState,
    };
