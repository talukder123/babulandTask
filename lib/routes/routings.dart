import 'package:get/get.dart';

// import '../app/middlewares/auth/auth_guard.dart';
import '../modules/babuland.tikit/route/binding.dart';
import '../modules/babuland.tikit/view/pages/babuland.tikit.dart';
import '../modules/config.dart';
import '../views/pages/splash/splash.dart';
import 'bindings.dart';

class RouteManager {
  static String tikitPage = "/";
  static String splash = "/splash";

  static List<GetPage> routes = [
    GetPage(
      name: splash,
      page: () => SplashPage(),
      bindings: [
        SplashBindings(),
      ],
      transition: Transition.zoom,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: tikitPage,
      page: () => TikitPage(),
      bindings: [
        TikitBindings(),
      ],
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 500),
    ),
  ];

  void jointRoute() {
    for (List<GetPage<dynamic>> module in modules) {
      for (GetPage route in module) {
        routes.add(route);
      }
    }
  }
}
