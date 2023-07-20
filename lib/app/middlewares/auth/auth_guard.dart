import 'package:get/get.dart';

// ignore: unused_import
import '../../../routes/routings.dart';
import '../../services/auth/auth_service.dart';

class AuthGuard extends GetMiddleware {
  final authService = Get.find<AuthService>();

  // @override
  // RouteSettings? redirect(String? route) {
  //   return authService.isAuthenticate.value
  //       ? null
  //       : RouteSettings(
  //           name: AuthRoute.logIn,
  //         );
  // }
}
