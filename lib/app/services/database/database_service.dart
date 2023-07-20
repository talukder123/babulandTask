import 'dart:async';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../init/contractors.dart';
import '../auth/auth_service.dart';

class DatabaseService extends GetxService {
  Future<DatabaseService> init() async => this;

  static var client = http.Client();
  final authService = Get.find<AuthService>();

  Future getTikit() async {
    Uri uri = InitVariable().apiUri(InitVariable().tikitApi);
    var response = await client.get(uri, headers: {
      "MOBILE_NUMBER": "01717956094"
    });
    print(response.statusCode);
    if (response.statusCode == 200) {
      var jsonData = response.body;
      return jsonData;
    } else {
      print(response.statusCode);
      return null;
    }
  }

  Future getTikitDeatils(headers) async {
    Uri uri = InitVariable().apiUri(InitVariable().tikitApiDeatails);
    var response = await client.get(uri, headers: headers);
    print(response.statusCode);
    if (response.statusCode == 200) {
      var jsonData = response.body;
      return jsonData;
    } else {
      print(response.statusCode);
      return null;
    }
  }
}
