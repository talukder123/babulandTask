import 'package:get/get.dart';
// ignore: unused_import
import 'dart:developer' as dev;

import '../../models/http_headers.dart';

class AuthService extends GetxService {
  Future<AuthService> init() async {
    // authCheck();
    return this;
  }

  // final RxBool isAuthenticate = false.obs;
  Rx<HttpHeaders> headers = HttpHeaders().obs;
  Rx<HttpHeaders> comHeaders = HttpHeaders(mobNub: 01717956094).obs;
}
