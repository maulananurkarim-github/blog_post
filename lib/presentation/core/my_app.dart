import 'package:flutter/material.dart';

import '../../routes/app_routes.dart';
import 'app_responsive_service.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      builder: AppResponsiveService.builder,
      routeInformationParser: appRoutes.routeInformationParser,
      routerDelegate: appRoutes.routerDelegate,
      routeInformationProvider: appRoutes.routeInformationProvider,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
      ),
    );
  }
}
