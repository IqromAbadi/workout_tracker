import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/workout_details_controller.dart';

class WorkoutDetailsView extends GetView<WorkoutDetailsController> {
  const WorkoutDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 350.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFAACCFB),
                  Color(0xff93A4FE),
                ],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 32.w,
                        height: 32.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              size: 16.sp,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 32.w,
                        height: 32.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 5.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 6.w,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff1D1617),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Container(
                                  width: 6.w,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff1D1617),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.67,
            minChildSize: 0.6,
            maxChildSize: 1.0,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            height: 5.h,
                            width: 40.w,
                            margin: EdgeInsets.symmetric(vertical: 10.h),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(height: 25.h),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
