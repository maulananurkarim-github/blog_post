import 'package:flutter/material.dart';

import 'app_dimensions.dart';

class AppSkeleton extends StatelessWidget {
  const AppSkeleton({
    Key? key,
    this.height,
    this.width,
  }) : super(key: key);

  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.04),
        borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
      ),
    );
  }
}
