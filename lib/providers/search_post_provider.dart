import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/post/post.dart';
import 'post_provider.dart';
import 'value_search_post_provider.dart';

final searchPostProvider = StateProvider<List<Post>>((ref) {
  final postState = ref.watch(postProvider).posts;
  final value = ref.watch(valueSearchPostProvider);
  return postState
      .where((element) =>
          element.title.toLowerCase().contains(value.toLowerCase()) ||
          element.body.toLowerCase().contains(value.toLowerCase()))
      .toList();
});
