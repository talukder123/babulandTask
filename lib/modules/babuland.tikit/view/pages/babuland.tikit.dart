import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

import '../../controller/tikit.cont.dart';
import '../../models/tikit.model.dart';
import '../../route/route.dart';

class TikitPage extends StatelessWidget {
  TikitPage({super.key});
  final TikitCotroller tikitCont = Get.find();
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
              decoration: BoxDecoration(
                color: Color(0xFFFF8D1A),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 20.sp,
                  ),
                  Text(
                    "Tickets",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,
                    ),
                  ),
                  Text(""),
                ],
              ),
            ),
          ),
          // -------------------------------------------------------------Body Tikit List
          Expanded(
            child: Obx(
              () {
                if (tikitCont.tikitList.isNotEmpty) {
                  return ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
                    physics: BouncingScrollPhysics(),
                    itemCount: tikitCont.tikitList.length,
                    itemBuilder: ((context, index) {
                      MTikit item = tikitCont.tikitList[index];
                      return Container(
                        // width: 100.w,
                        margin: EdgeInsets.only(bottom: 10.sp),
                        padding: EdgeInsets.all(10.sp),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.sp),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 5,
                              spreadRadius: 0.5,
                              offset: Offset(-5, -5),
                            ),
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5,
                              spreadRadius: 0.5,
                              offset: Offset(3, 3),
                            ),
                          ],
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                width: 2.sp,
                                color: Colors.green,
                              ),
                              left: BorderSide(
                                width: 2.sp,
                                color: Color(0xFFFF8D1A),
                              ),
                              right: BorderSide(
                                width: 2.sp,
                                color: Colors.lightBlue.shade600,
                              ),
                              bottom: BorderSide(
                                width: 2.sp,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10.sp),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      "assets/images/babulandlogo.png",
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "This is your Entry Ticket",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 0.5.h),
                                        Text(
                                          "Order ID: ${item.pk}",
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                        SizedBox(height: 1.h),
                                        Text(
                                          "Ticket Price: ${item.total}tk",
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Image.asset(
                                      "assets/images/qr.png",
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFF8D1A),
                                    borderRadius: BorderRadius.circular(5.sp),
                                  ),
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.symmetric(horizontal: 25.sp, vertical: 18.sp),
                                      visualDensity: VisualDensity(
                                        vertical: VisualDensity.minimumDensity,
                                        horizontal: VisualDensity.minimumDensity,
                                      ),
                                    ),
                                    onPressed: () {
                                      tikitCont.selectTikit.value = item;
                                      Get.toNamed(TikitRoute.tikitPage2);
                                    },
                                    child: Text(
                                      "Active",
                                      style: GoogleFonts.raleway(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // TextButton(
                              //     onPressed: () {
                              //       tikitCont.getTikitList();
                              //     },
                              //     child: Text("Print")),
                              SizedBox(height: 1.h),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 5.sp),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Purchase Date ${item.sellDate} ",
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    InkWell(
                                      child: Row(
                                        children: [
                                          Text(
                                            "Details",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFFFF8D1A),
                                            ),
                                          ),
                                          SizedBox(width: 1.w),
                                          CircleAvatar(
                                            radius: 5.sp,
                                            backgroundColor: Color(0xFFFF8D1A),
                                            child: Icon(
                                              Icons.arrow_forward,
                                              color: Colors.white,
                                              size: 10.sp,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  );
                } else if (tikitCont.tikitList.isEmpty && tikitCont.onloadTikit.value) {
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
          )

          // ------------------------------------------------------------------
        ],
      ),
    );
  }
}
