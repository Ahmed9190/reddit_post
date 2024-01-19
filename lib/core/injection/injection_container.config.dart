// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:reddit_task/core/theme/theme.dart' as _i7;
import 'package:reddit_task/features/post/data/data_sources/post_remote_data_source.dart'
    as _i3;
import 'package:reddit_task/features/post/data/repositories/post_repository.dart'
    as _i5;
import 'package:reddit_task/features/post/domain/repositories/i_post_repository.dart'
    as _i4;
import 'package:reddit_task/features/post/presentation/providers/post_provider.dart'
    as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IPostRemoteDataSource>(
        () => _i3.PostRemoteDataSource());
    gh.lazySingleton<_i4.IPostRepository>(() => _i5.PostRepository(
        postRemoteDataSource: gh<_i3.IPostRemoteDataSource>()));
    gh.factory<_i6.PostProvider>(
        () => _i6.PostProvider(postRepository: gh<_i4.IPostRepository>()));
    gh.factory<_i7.ThemeNotifier>(() => _i7.ThemeNotifier());
    return this;
  }
}
