import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../domain/post/post.dart';
import '../../../core/app_dimensions.dart';
import '../../../core/regex.dart';
import '../../detail_page/detail_page.dart';

class CardPost extends StatelessWidget {
  const CardPost({
    Key? key,
    required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(AppDimensions.radiusDefault),
      child: InkWell(
        onTap: () => context.goNamed(
          DetailPage.routeName,
          extra: post,
        ),
        borderRadius: BorderRadius.circular(AppDimensions.radiusDefault),
        child: Container(
          margin: EdgeInsets.zero,
          height: 90.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDimensions.radiusDefault),
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppDimensions.paddingSizeExtraSmall),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  regexText(post.title),
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.white),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: AppDimensions.paddingSizeExtraSmall,
                ),
                Text(
                  regexText(post.body),
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
