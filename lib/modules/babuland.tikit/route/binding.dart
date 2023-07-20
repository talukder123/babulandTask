import 'package:get/get.dart';

import '../controller/tikit.cont.dart';
import '../controller/tikit.daeataails.cont.dart';

class TikitBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TikitCotroller>(() => TikitCotroller());
    Get.lazyPut<TikitDeaController>(() => TikitDeaController());
  }
}

class TikitBindingsDeatails implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TikitCotroller>(() => TikitCotroller());
  }
}
