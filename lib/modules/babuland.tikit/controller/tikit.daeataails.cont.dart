import 'dart:convert';

import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

import '../../../app/services/auth/auth_service.dart';
import '../../../app/services/database/database_service.dart';
import '../models/tikit.deatails.model.dart';
import 'tikit.cont.dart';

class TikitDeaController extends GetxController {
  final dbs = Get.find<DatabaseService>();
  final authService = Get.find<AuthService>();
  final tikitCont = Get.find<TikitCotroller>();
  RxList<MTikitDeatails> tikitListDeatails = <MTikitDeatails>[].obs;
  RxBool onloadTikit = false.obs;
  @override
  void onInit() {
    super.onInit();
    getTikitDeatailsList();
  }

  void getTikitDeatailsList() {
    onloadTikit.value = false;
    dbs.getTikitDeatils({
      "ORDER_ID": "${tikitCont.selectTikit.value.pk}"
    }).then(
      (returnData) {
        print(returnData);
        if (returnData != null) {
          var deocodeData = jsonDecode(returnData);
          List<MTikitDeatails> rowList = mTikitDeatailsFromJson(jsonEncode(deocodeData['items']));
          for (MTikitDeatails comments in rowList) {
            tikitListDeatails.add(comments);
            print(tikitListDeatails);
          }
          SmartDialog.dismiss().then((value) {
            onloadTikit.value = true;
          });
        }
      },
    );
  }
}
