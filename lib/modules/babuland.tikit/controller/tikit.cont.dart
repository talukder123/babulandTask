import 'dart:convert';

import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

import '../../../app/services/auth/auth_service.dart';
import '../../../app/services/database/database_service.dart';
import '../models/tikit.model.dart';

class TikitCotroller extends GetxController {
  final dbs = Get.find<DatabaseService>();
  final authService = Get.find<AuthService>();
  RxList<MTikit> tikitList = <MTikit>[].obs;
  RxBool onloadTikit = false.obs;
  Rx<MTikit> selectTikit = MTikit().obs;
  @override
  void onInit() {
    super.onInit();
    getTikitList();
  }

  void getTikitList() {
    onloadTikit.value = false;
    dbs.getTikit().then(
      (returnData) {
        print(returnData);
        if (returnData != null) {
          var deocodeData = jsonDecode(returnData);
          List<MTikit> rowList = mTikitFromJson(jsonEncode(deocodeData['items']));
          for (MTikit comment in rowList) {
            tikitList.add(comment);
            print(tikitList);
          }
          SmartDialog.dismiss().then((value) {
            onloadTikit.value = true;
          });
        }
      },
    );
  }
}

// Uri uri = InitVariable().apiUri(InitVariable().tikitApiDeatails);
    // var response = await client.get(uri, headers: {
    //   "ORDER_ID": "${tikitcont.selectTikit.value.pk}"
    // });
    // print(response.statusCode);
    // if (response.statusCode == 200) {
    //   var jsonData = response.body;
    //   return jsonData;
    // } else {
    //   print(response.statusCode);
    //   return null;
    // }