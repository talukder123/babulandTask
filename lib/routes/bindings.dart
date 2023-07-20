import 'package:get/get.dart';
import '../app/controllers/splash/splash.cont.dart';

class SplashBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}

class HomeBindings implements Bindings {
  @override
  void dependencies() {}
}
