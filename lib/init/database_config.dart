import 'package:get/get.dart';

import '../app/services/auth/auth_service.dart';
import '../app/services/database/database_service.dart';

class DatabaseConfig {
  Future<void> openDatabase() async {}

  Future<void> openMiddlewares() async {
    await Get.putAsync(() => AuthService().init());
    await Get.putAsync(() => DatabaseService().init());
  }
}
