import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'init/database_config.dart';
import 'init/translation/traslation.dart';
import 'routes/bindings.dart';
import 'routes/routings.dart';

void main() async {
  await DatabaseConfig().openDatabase();
  await DatabaseConfig().openMiddlewares();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        RouteManager().jointRoute();
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Babuland",
          translations: MyTranslations(),
          locale: Locale('en', 'US'),
          fallbackLocale: Locale('en', 'US'),
          initialBinding: HomeBindings(),
          initialRoute: RouteManager.splash,
          getPages: RouteManager.routes,
          theme: ThemeData(primarySwatch: Colors.red),
          navigatorObservers: [
            FlutterSmartDialog.observer
          ],
          builder: FlutterSmartDialog.init(),
        );
      },
    );
  }
}
