import 'package:reddit_task/core/enums/vote_state.dart';
import 'package:reddit_task/core/typedefs.dart';
import 'package:reddit_task/features/post/domain/entities/post.dart';

abstract interface class IPostRepository {
  FutureApiResult<Post> getPost(int id);

  FutureVoidApiResult vote(int id, VoteState voteState);
}
