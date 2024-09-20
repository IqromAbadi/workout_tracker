import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:workout_tracker/app/modules/workout_details/views/workout_details_view.dart';

import '../controllers/workout_tracker_controller.dart';

class WorkoutTrackerView extends GetView<WorkoutTrackerController> {
  const WorkoutTrackerView({Key? key}) : super(key: key);

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
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            size: 16.sp,
                          ),
                        ),
                      ),
                      const Text(
                        "Workout Tracker",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
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
                  SizedBox(height: 20.h),
                  SvgPicture.asset("assets/images/Graph.svg"),
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
                        Container(
                          width: double.infinity,
                          height: 57,
                          decoration: BoxDecoration(
                            color: const Color(0xffE9EDFE),
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Daily Workout Schedule",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: const Color(0xff1D1617),
                                  ),
                                ),
                                Container(
                                  width: 68.w,
                                  height: 28.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.r),
                                    gradient: const LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      stops: [0.35, 0.9],
                                      colors: [
                                        Color(0xff9DCEFF),
                                        Color(0xFF92A3FD),
                                      ],
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Check",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Upcoming Workout",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "See more",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: const Color(0xffADA4A5),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 15.h),
                        Container(
                          width: double.infinity,
                          height: 80.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.09),
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset: const Offset(0, 1.5),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.w),
                            child: Row(
                              children: [
                                Container(
                                  width: 50.w,
                                  height: 50.h,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffE9EDFE),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                        "assets/images/fullbody.svg"),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Fullbody Workout",
                                      style: TextStyle(fontSize: 12.sp),
                                    ),
                                    Text(
                                      "Today, 03:00 pm",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xffADA4A5),
                                      ),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Transform.scale(
                                  scale: 0.7,
                                  child: Obx(
                                    () => CupertinoSwitch(
                                      value: controller.isSwitched.value,
                                      onChanged: (value) {
                                        controller.isSwitched.value = value;
                                      },
                                      activeColor: const Color(0xffEEA4CE),
                                      trackColor: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15.h),
                        Container(
                          width: double.infinity,
                          height: 80.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.09),
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset: const Offset(0, 1.5),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.w),
                            child: Row(
                              children: [
                                Container(
                                  width: 50.w,
                                  height: 50.h,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffE9EDFE),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                        "assets/images/upperbody.svg"),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Upperbody Workout",
                                      style: TextStyle(fontSize: 12.sp),
                                    ),
                                    Text(
                                      "June 05, 02:00 pm",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xffADA4A5),
                                      ),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Transform.scale(
                                  scale: 0.7,
                                  child: Obx(
                                    () => CupertinoSwitch(
                                      value: controller.isSwitched1.value,
                                      onChanged: (value) {
                                        controller.isSwitched1.value = value;
                                      },
                                      activeColor: const Color(0xffEEA4CE),
                                      trackColor: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 30.h),
                        Text(
                          "What Do You Want to Train",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Obx(
                          () {
                            return ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.trainsList.length,
                              itemBuilder: (context, index) {
                                var train = controller.trainsList[index];
                                return GestureDetector(
                                  onTap: () {
                                    Get.to(() => const WorkoutDetailsView(),
                                        arguments: train);
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 132.h,
                                    margin: EdgeInsets.only(bottom: 15.h),
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        stops: [1, 0.9],
                                        colors: [
                                          Color(0xffE9EDFE),
                                          Color(0xFF92A3FD),
                                        ],
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                train.title,
                                                style: TextStyle(
                                                  fontSize: 14.sp,
                                                ),
                                              ),
                                              Text(
                                                train.subtitle,
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color:
                                                      const Color(0xff7B6F72),
                                                ),
                                              ),
                                              SizedBox(height: 15.h),
                                              Container(
                                                width: 94.w,
                                                height: 35.h,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50.r),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "View more",
                                                    style: TextStyle(
                                                      fontSize: 10.sp,
                                                      color: const Color(
                                                          0xff9DCEFF),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 20),
                                            child: Container(
                                              width: 92.w,
                                              height: 92.h,
                                              decoration: const BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Center(
                                                child: SvgPicture.asset(
                                                  train.imageUrl,
                                                  height: 200,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
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
