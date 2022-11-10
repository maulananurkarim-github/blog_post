import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/post/post.dart';

part 'post_state.freezed.dart';

@freezed
class PostState with _$PostState {
  factory PostState({
    required List<Post> posts,
    required bool loading,
  }) = _PostState;
}
