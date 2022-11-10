import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/api_provider.dart';
import 'post_state.dart';

class PostNotifier extends StateNotifier<PostState> {
  PostNotifier(this.ref) : super(PostState(posts: [], loading: true)) {
    _initPost();
  }

  Ref ref;

  void _initPost() {
    ref.watch(apiProvider).getBlogPost().then((value) {
      state = state.copyWith(posts: value, loading: false);
    });
  }

  Future<void> refresh() async {
    state = state.copyWith(loading: true);
    _initPost();
  }
}
