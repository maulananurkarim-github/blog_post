import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppResponsiveService {
  static Widget builder(BuildContext context, Widget? widget) {
    return ResponsiveWrapper.builder(
      ClampingScrollWrapper.builder(context, widget!),
      maxWidth: 1440,
      minWidth: 400,
      defaultScale: true,
      breakpoints: [
        const ResponsiveBreakpoint.autoScale(480, name: MOBILE),
        const ResponsiveBreakpoint.autoScale(720, name: MOBILE),
        const ResponsiveBreakpoint.autoScale(1080, name: MOBILE),
        const ResponsiveBreakpoint.autoScale(1600, name: MOBILE),
        const ResponsiveBreakpoint.autoScale(1768, name: MOBILE),
        const ResponsiveBreakpoint.autoScale(2200, name: MOBILE),
        const ResponsiveBreakpoint.autoScale(1440, name: MOBILE),
        const ResponsiveBreakpoint.autoScale(600, name: TABLET),
        const ResponsiveBreakpoint.autoScale(1600, name: TABLET),
        const ResponsiveBreakpoint.autoScale(800, name: TABLET),
        const ResponsiveBreakpoint.autoScale(1800, name: TABLET),
      ],
      background: Container(color: Colors.white),
    );
  }
}
