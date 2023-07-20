import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../app/controllers/splash/splash.cont.dart';

class SplashPage extends StatelessWidget {
  SplashPage({super.key});
  final SplashController splashCont = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/babulandlogo.png",
              height: 100.w,
              width: 40.w,
              fit: BoxFit.fitWidth,
            ),
          ],
        ),
      ),
    );
  }
}
