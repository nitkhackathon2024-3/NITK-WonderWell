import 'package:auto_route/auto_route.dart';
import 'package:wisdom_well/core/routes/auto_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          children: [
            AutoRoute(page: LoginRoute.page),
            AutoRoute(page: RegisterRoute.page),
            AutoRoute(page: ListTressRoute.page),
            AutoRoute(page: ProfileRoute.page)
          ],
        ),
        AutoRoute(page: CreateTreeRoute.page),
      ];
}
