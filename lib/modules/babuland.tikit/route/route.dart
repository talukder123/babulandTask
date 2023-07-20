import 'package:get/get.dart';

import '../view/pages/babuland.tikit.deatails.dart';
import 'binding.dart';

class TikitRoute {
  static String tikitPage2 = "/tikitPage2";

  static List<GetPage> routes = [
    GetPage(
      name: tikitPage2,
      page: () => TikitDeatails(),
      bindings: [
        TikitBindings(),
      ],
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 500),
    )
  ];
}
