import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

import '../../controller/tikit.cont.dart';
import '../../controller/tikit.daeataails.cont.dart';
import '../../models/tikit.deatails.model.dart';

class TikitDeatails extends StatelessWidget {
  TikitDeatails({super.key});
  final TikitCotroller tikitCont = Get.find();
  final TikitDeaController tikitDeaCont = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // -------------------------------------------------------------Header
          SafeArea(
            child: Container(
              alignment: Alignment.center,
              width: 100.w,
              padding: EdgeInsets.all(10.sp),
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: Get.back,
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 20.sp,
                    ),
                  ),
                  Text(
                    "Tickets",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.black,
                    ),
                  ),
                  Text(""),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // -------------------------------------------------------------All tikit
                  Obx(
                    () {
                      return Container(
                        height: tikitDeaCont.tikitListDeatails.length == 1 ? 40.h : 65.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            stops: [
                              0.2,
                              0.7
                            ],
                            colors: [
                              // Color(0xF0FCFAF8),
                              Color.fromARGB(239, 253, 253, 253),
                              // Color(0xffFFE3BE),
                              Color.fromARGB(255, 220, 218, 215),
                              // Color(#FFE3BE)
                              // #FFF4E6
                              // Colors.teal.shade500,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(5.sp),
                        ),
                        child: Obx(
                          () {
                            if (tikitDeaCont.tikitListDeatails.isNotEmpty) {
                              return ListView.builder(
                                padding: EdgeInsets.symmetric(vertical: 10.sp),
                                physics: BouncingScrollPhysics(),
                                itemCount: tikitDeaCont.tikitListDeatails.length,
                                itemBuilder: ((context, index) {
                                  MTikitDeatails item = tikitDeaCont.tikitListDeatails[index];
                                  print(tikitDeaCont.tikitListDeatails.length);
                                  return Container(
                                    margin: EdgeInsets.symmetric(horizontal: 10.sp),
                                    height: 30.h,
                                    // width: 100.w,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/tikitbackground.png"),
                                      ),
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.only(top: 35.sp),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                width: 40.w,
                                                alignment: Alignment.bottomCenter,
                                                child: Column(
                                                  children: [
                                                    Image.asset(
                                                      "assets/images/logo.png",
                                                    ),
                                                    SizedBox(height: 1.h),
                                                    Container(
                                                      padding: EdgeInsets.symmetric(vertical: 1.8.sp, horizontal: 10.sp),
                                                      decoration: BoxDecoration(
                                                        border: Border(
                                                            bottom: BorderSide(
                                                          color: Color(0xFFFF8D1A),
                                                          width: 1,
                                                        )),
                                                      ),
                                                      child: Text(
                                                        "Uttara",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.grey.shade500,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      padding: EdgeInsets.symmetric(vertical: 1.8.sp, horizontal: 10.sp),
                                                      decoration: BoxDecoration(
                                                        border: Border(
                                                            bottom: BorderSide(
                                                          color: Color(0xFFFF8D1A),
                                                          width: 1,
                                                        )),
                                                      ),
                                                      child: Text(
                                                        "Wari",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.grey.shade500,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      padding: EdgeInsets.symmetric(vertical: 1.8.sp, horizontal: 10.sp),
                                                      decoration: BoxDecoration(
                                                        border: Border(
                                                            bottom: BorderSide(
                                                          color: Color(0xFFFF8D1A),
                                                          width: 1,
                                                        )),
                                                      ),
                                                      child: Text(
                                                        "Badda",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.grey.shade500,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      padding: EdgeInsets.symmetric(vertical: 1.8.sp, horizontal: 10.sp),
                                                      decoration: BoxDecoration(
                                                        border: Border(
                                                            bottom: BorderSide(
                                                          color: Color(0xFFFF8D1A),
                                                          width: 1,
                                                        )),
                                                      ),
                                                      child: Text(
                                                        "Mirpur",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.grey.shade500,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 50.w,
                                                alignment: Alignment.center,
                                                padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      item.dsc!,
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    SizedBox(height: 1.h),
                                                    Text(
                                                      "SL NO: ${item.pk}",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.grey.shade500,
                                                      ),
                                                    ),
                                                    SizedBox(height: 2.h),
                                                    Text(
                                                      "Qualaity Prize: ${item.qty}",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.red,
                                                      ),
                                                    ),
                                                    SizedBox(height: 1.h),
                                                    Container(
                                                      padding: EdgeInsets.symmetric(horizontal: 5.sp, vertical: 5.sp),
                                                      decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(20.sp)),
                                                      child: Text(
                                                        "Prize: 0",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                              );
                            } else if (tikitDeaCont.tikitListDeatails.isEmpty && tikitCont.onloadTikit.value) {
                              return Center(
                                child: Container(
                                  clipBehavior: Clip.antiAlias,
                                  padding: EdgeInsets.all(15.sp),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.sp),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white,
                                        blurRadius: 5,
                                        spreadRadius: 0.5,
                                        offset: Offset(-5, 5),
                                      ),
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5,
                                        spreadRadius: 0.5,
                                        offset: Offset(3, 3),
                                      ),
                                    ],
                                  ),
                                  child: Text("Tikit Not Found"),
                                ),
                              );
                            } else {
                              return Shimmer.fromColors(
                                baseColor: Colors.grey.shade300,
                                highlightColor: Colors.white,
                                period: Duration(seconds: 2),
                                enabled: true,
                                child: ListView.builder(
                                  padding: EdgeInsets.all(15.sp),
                                  physics: BouncingScrollPhysics(),
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      height: 20.h,
                                      margin: EdgeInsets.only(bottom: 15.sp),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10.sp),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.white,
                                            blurRadius: 5,
                                            spreadRadius: 0.5,
                                            offset: Offset(-5, 5),
                                          ),
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 5,
                                            spreadRadius: 0.5,
                                            offset: Offset(3, 3),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              );
                            }
                          },
                        ),
                      );
                    },
                  ),
                  // -------------------------------------------------------------Middile
                  Container(
                    width: 30.w,
                    padding: EdgeInsets.symmetric(horizontal: 5.sp, vertical: 3.sp),
                    margin: EdgeInsets.symmetric(vertical: 10.sp),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(
                          20.sp,
                        )),
                  ),
                  Text(
                    "Scan QR code to avail ticket",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // -------------------------------------------------------------tikit description
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 50.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Order ID ",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.shade500,
                                ),
                              ),
                              SizedBox(height: 0.5.h),
                              Text(
                                tikitCont.selectTikit.value.pk.toString(),
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFFFF8D1A),
                                ),
                              ),
                              SizedBox(height: 0.5.h),
                              Text(
                                "Tiket Purchase Date",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.shade500,
                                ),
                              ),
                              SizedBox(height: 0.5.h),
                              Text(
                                "${tikitCont.selectTikit.value.sellDate}",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFFFF8D1A),
                                ),
                              ),
                              SizedBox(height: 0.5.h),
                              Text(
                                "Tiket Expire Date",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.shade500,
                                ),
                              ),
                              SizedBox(height: 0.5.h),
                              Text(
                                "None",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFFFF8D1A),
                                ),
                              ),
                              SizedBox(height: 0.5.h),
                              Text(
                                "Ticket price",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.shade500,
                                ),
                              ),
                              SizedBox(height: 0.5.h),
                              Text(
                                "${tikitCont.selectTikit.value.total}",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFFFF8D1A),
                                ),
                              ),
                              SizedBox(height: 0.5.h),
                            ],
                          ),
                        ),
                        Image.asset(
                          "assets/images/qrcode.png",
                          height: 20.h,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
