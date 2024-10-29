import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainRoute.page,
          initial: true,
          children: mainRoutes,
        ),
        AutoRoute(page: MovieDetailRoute.page),
        AutoRoute(page: CastsRoute.page),
        AutoRoute(page: ImageDetailRoute.page),
        AutoRoute(page: MovieListRoute.page),
        AutoRoute(page: PeopleDetailRoute.page),
      ];

  List<AutoRoute> get mainRoutes => [
        AutoRoute(page: HomeRoute.page, initial: true),
      ];
}
