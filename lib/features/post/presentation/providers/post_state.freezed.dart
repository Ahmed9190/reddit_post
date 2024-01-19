// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostState {
  AsyncState<Post> get post => throw _privateConstructorUsedError;
  AsyncState<Unit> get action => throw _privateConstructorUsedError;
  VideoPlayerController? get videoController =>
      throw _privateConstructorUsedError;
  bool get isCommentsBottomSheetVisible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostStateCopyWith<PostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res, PostState>;
  @useResult
  $Res call(
      {AsyncState<Post> post,
      AsyncState<Unit> action,
      VideoPlayerController? videoController,
      bool isCommentsBottomSheetVisible});

  $AsyncStateCopyWith<Post, $Res> get post;
  $AsyncStateCopyWith<Unit, $Res> get action;
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res, $Val extends PostState>
    implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
    Object? action = null,
    Object? videoController = freezed,
    Object? isCommentsBottomSheetVisible = null,
  }) {
    return _then(_value.copyWith(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as AsyncState<Post>,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as AsyncState<Unit>,
      videoController: freezed == videoController
          ? _value.videoController
          : videoController // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
      isCommentsBottomSheetVisible: null == isCommentsBottomSheetVisible
          ? _value.isCommentsBottomSheetVisible
          : isCommentsBottomSheetVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AsyncStateCopyWith<Post, $Res> get post {
    return $AsyncStateCopyWith<Post, $Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AsyncStateCopyWith<Unit, $Res> get action {
    return $AsyncStateCopyWith<Unit, $Res>(_value.action, (value) {
      return _then(_value.copyWith(action: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostStateImplCopyWith<$Res>
    implements $PostStateCopyWith<$Res> {
  factory _$$PostStateImplCopyWith(
          _$PostStateImpl value, $Res Function(_$PostStateImpl) then) =
      __$$PostStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncState<Post> post,
      AsyncState<Unit> action,
      VideoPlayerController? videoController,
      bool isCommentsBottomSheetVisible});

  @override
  $AsyncStateCopyWith<Post, $Res> get post;
  @override
  $AsyncStateCopyWith<Unit, $Res> get action;
}

/// @nodoc
class __$$PostStateImplCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$PostStateImpl>
    implements _$$PostStateImplCopyWith<$Res> {
  __$$PostStateImplCopyWithImpl(
      _$PostStateImpl _value, $Res Function(_$PostStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
    Object? action = null,
    Object? videoController = freezed,
    Object? isCommentsBottomSheetVisible = null,
  }) {
    return _then(_$PostStateImpl(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as AsyncState<Post>,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as AsyncState<Unit>,
      videoController: freezed == videoController
          ? _value.videoController
          : videoController // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
      isCommentsBottomSheetVisible: null == isCommentsBottomSheetVisible
          ? _value.isCommentsBottomSheetVisible
          : isCommentsBottomSheetVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PostStateImpl implements _PostState {
  _$PostStateImpl(
      {required this.post,
      required this.action,
      required this.videoController,
      required this.isCommentsBottomSheetVisible});

  @override
  final AsyncState<Post> post;
  @override
  final AsyncState<Unit> action;
  @override
  final VideoPlayerController? videoController;
  @override
  final bool isCommentsBottomSheetVisible;

  @override
  String toString() {
    return 'PostState(post: $post, action: $action, videoController: $videoController, isCommentsBottomSheetVisible: $isCommentsBottomSheetVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostStateImpl &&
            (identical(other.post, post) || other.post == post) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.videoController, videoController) ||
                other.videoController == videoController) &&
            (identical(other.isCommentsBottomSheetVisible,
                    isCommentsBottomSheetVisible) ||
                other.isCommentsBottomSheetVisible ==
                    isCommentsBottomSheetVisible));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, post, action, videoController, isCommentsBottomSheetVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostStateImplCopyWith<_$PostStateImpl> get copyWith =>
      __$$PostStateImplCopyWithImpl<_$PostStateImpl>(this, _$identity);
}

abstract class _PostState implements PostState {
  factory _PostState(
      {required final AsyncState<Post> post,
      required final AsyncState<Unit> action,
      required final VideoPlayerController? videoController,
      required final bool isCommentsBottomSheetVisible}) = _$PostStateImpl;

  @override
  AsyncState<Post> get post;
  @override
  AsyncState<Unit> get action;
  @override
  VideoPlayerController? get videoController;
  @override
  bool get isCommentsBottomSheetVisible;
  @override
  @JsonKey(ignore: true)
  _$$PostStateImplCopyWith<_$PostStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
