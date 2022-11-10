import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../providers/value_search_post_provider.dart';

class SearchBarBlogPost extends ConsumerWidget {
  const SearchBarBlogPost({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoSearchTextField(
      backgroundColor: Colors.white,
      onChanged: (value) {
        ref.read(valueSearchPostProvider.notifier).state = value;
      },
      onSubmitted: (value) {
        ref.read(valueSearchPostProvider.notifier).state = value;
      },
    );
  }
}
