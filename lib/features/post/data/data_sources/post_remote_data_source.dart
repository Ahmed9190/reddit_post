import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_task/core/typedefs.dart';
import 'package:reddit_task/features/post/data/models/post_model.dart';

abstract interface class IPostRemoteDataSource {
  FutureApiResult<PostModel> getPost(int id);
  FutureVoidApiResult vote(int id, String voteState);
}

@LazySingleton(as: IPostRemoteDataSource)
class PostRemoteDataSource implements IPostRemoteDataSource {
  @override
  FutureApiResult<PostModel> getPost(int id) async {
    await Future.delayed(const Duration(seconds: 1));

    final Map<String, dynamic> json = {
      "id": 1,
      "title": "r/MechanicalKeyboards",
      "subredditImage":
          "https://st4.depositphotos.com/9998432/27431/v/450/depositphotos_274313380-stock-illustration-person-gray-photo-placeholder-woman.jpg",
      "videoUrl":
          "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
      "userProfilePicture":
          "https://external-preview.redd.it/1mF2BkbuRUyI5Od8V7aTZDVS_Y8-GMWeT4zvv7e_IrI.jpg?auto=webp&s=6dd561c5c1c1d69de69a56c8afaf4d5e3269d537",
      "userName": "Xury46",
      "caption":
          "After a year of collecting parts for this build, I present my finished Heavy-9 (Thocky typing test at the end!)",
      "votesCount": 267,
      "commentsCount": 61,
      "voteState": "none"
    };

    final postModel = PostModel.fromJson(json);

    return right(postModel);
  }

  @override
  FutureVoidApiResult vote(int id, String voteState) async {
    await Future.delayed(const Duration(seconds: 1));

    return Random().nextBool()
        ? right(unit)
        : left("Something went wrong. Please try again.");
  }
}
