import 'package:flutter/material.dart';

import '../../../domain/post/post.dart';
import '../../core/app_dimensions.dart';
import '../../core/regex.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.post});

  final Post post;

  static String get routeName => 'detail';
  static String get routeLocation => routeName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppDimensions.paddingSizeDefault),
        child: Column(
          children: [
            Text(
              regexText(post.title),
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: AppDimensions.paddingSizeExtraLarge,
            ),
            Text(
              regexText(post.body),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
