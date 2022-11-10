import 'package:go_router/go_router.dart';

import '../domain/post/post.dart';
import '../presentation/pages/detail_page/detail_page.dart';
import '../presentation/pages/home_page/home_page.dart';

final GoRouter appRoutes = GoRouter(
  routes: [
    GoRoute(
      path: HomePage.routeLocation,
      name: HomePage.routeName,
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          path: DetailPage.routeLocation,
          name: DetailPage.routeName,
          builder: (context, state) {
            Object? args = state.extra;

            if (args != null && args is Post) {
              return DetailPage(post: args);
            } else {
              return DetailPage(
                post: Post(id: 0, userId: 0, title: '', body: ''),
              );
            }
          },
        ),
      ],
    ),
  ],
  initialLocation: '/',
  debugLogDiagnostics: true,
  routerNeglect: true,
);
