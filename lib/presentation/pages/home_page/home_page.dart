import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/post_provider.dart';
import '../../../providers/search_post_provider.dart';
import '../../core/app_dimensions.dart';
import '../../core/app_skeleton.dart';
import 'widgets/card_post.dart';
import 'widgets/search_bar_blog_post.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String get routeName => 'home';
  static String get routeLocation => '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SearchBarBlogPost(),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final dataPost = ref.watch(searchPostProvider.notifier).state;
          final isLoading = ref.watch(postProvider).loading;

          if (isLoading) {
            return ListView.separated(
              padding: const EdgeInsets.all(AppDimensions.paddingSizeDefault),
              itemBuilder: (context, index) {
                return const AppSkeleton(
                  height: 90.0,
                );
              },
              itemCount: 10,
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: AppDimensions.paddingSizeSmall),
            );
          }

          if (dataPost.isEmpty) {
            return const Center(
              child: Text('No data'),
            );
          }

          return RefreshIndicator(
            onRefresh: () => ref.read(postProvider.notifier).refresh(),
            child: Scrollbar(
              child: ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(
                  dragDevices: {
                    PointerDeviceKind.touch,
                    PointerDeviceKind.mouse,
                  },
                ),
                child: ListView.separated(
                  padding:
                      const EdgeInsets.all(AppDimensions.paddingSizeDefault),
                  itemBuilder: (context, index) {
                    final post = dataPost[index];
                    return CardPost(post: post);
                  },
                  itemCount: dataPost.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(height: AppDimensions.paddingSizeSmall),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
