import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import '../../../routes/routings.dart';
import '../../services/database/database_service.dart';

class SplashController extends GetxController {
  final dbs = Get.find<DatabaseService>();
  // final fcmToken = FirebaseMessaging.instance.getToken();

  @override
  void onInit() async {
    super.onInit();
    FlutterNativeSplash.remove();

    await Future.delayed(Duration(seconds: 5)).then((value) {
      Get.offAllNamed(RouteManager.tikitPage);
    });
  }
}
