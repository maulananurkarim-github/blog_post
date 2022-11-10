import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../application/post/post_notifier.dart';
import '../application/post/post_state.dart';

final postProvider = StateNotifierProvider<PostNotifier, PostState>((ref) {
  return PostNotifier(ref);
});
