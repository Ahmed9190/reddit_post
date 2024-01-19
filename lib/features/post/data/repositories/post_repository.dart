import 'package:injectable/injectable.dart';
import 'package:reddit_task/core/enums/vote_state.dart';
import 'package:reddit_task/core/extensions/dartz_ext.dart';
import 'package:reddit_task/core/typedefs.dart';
import 'package:reddit_task/features/post/data/data_sources/post_remote_data_source.dart';
import 'package:reddit_task/features/post/domain/entities/post.dart';
import 'package:reddit_task/features/post/domain/repositories/i_post_repository.dart';

@LazySingleton(as: IPostRepository)
class PostRepository implements IPostRepository {
  final IPostRemoteDataSource _postRemoteDataSource;

  PostRepository({
    required IPostRemoteDataSource postRemoteDataSource,
  }) : _postRemoteDataSource = postRemoteDataSource;

  @override
  FutureApiResult<Post> getPost(int id) async {
    final eitherPostModel = await _postRemoteDataSource.getPost(id);

    final eitherPost = eitherPostModel.mapRight(Post.fromModel);

    return eitherPost;
  }

  @override
  FutureVoidApiResult vote(int id, VoteState voteState) async {
    return await _postRemoteDataSource.vote(id, voteState.name);
  }
}
