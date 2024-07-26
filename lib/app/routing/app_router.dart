import 'package:auto_route/auto_route.dart';
import 'package:musicaster/app/routing/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "Route,Page|Screen")
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(initial: true, page: SplashView.page),
        AutoRoute(page: OnBoardingView.page),
        AutoRoute(
          page: MainNavigation.page,
          children: [
            AutoRoute(page: SettingsView.page),
          ],
        ),
      ];
}
