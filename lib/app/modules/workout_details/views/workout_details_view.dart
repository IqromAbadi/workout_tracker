import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:workout_tracker/app/data/items.dart';

import '../controllers/workout_details_controller.dart';

class WorkoutDetailsView extends GetView<WorkoutDetailsController> {
  const WorkoutDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 500.h,
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
                  SizedBox(height: 30.h),
                  Container(
                    width: 288.w,
                    height: 288.h,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      backgroundBlendMode: BlendMode.softLight,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.63,
            minChildSize: 0.5,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 200.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.workoutName,
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    controller.workoutDescription,
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xff7B6F72),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SvgPicture.asset(
                              "assets/icons/favorite.svg",
                              width: 16.w,
                              height: 16.h,
                            )
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Container(
                          width: double.infinity,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: const Color(0xffE9EDFE),
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.w),
                            child: Row(
                              children: [
                                SvgPicture.asset("assets/icons/Calendar.svg"),
                                SizedBox(width: 10.w),
                                Text(
                                  "Schedule Workout",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff7B6F72),
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  "5/27, 09.00 AM",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff7B6F72),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                GestureDetector(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: const Color(0xff7B6F72),
                                    size: 16.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15.h),
                        Container(
                          width: double.infinity,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: const Color(0xffF6E9FA),
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.w),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                    "assets/icons/Difficulity.svg"),
                                SizedBox(width: 10.w),
                                Text(
                                  "Difficulity",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff7B6F72),
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  "Beginner",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff7B6F72),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                GestureDetector(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: const Color(0xff7B6F72),
                                    size: 16.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 30.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "You'll need",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "5 Items",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: const Color(0xff7B6F72),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Obx(
                          () => SizedBox(
                            height: 170.h,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.itemneedlist.length,
                              itemBuilder: (context, index) {
                                final item = controller.itemneedlist[index];
                                return Container(
                                  width: 130.w,
                                  margin: EdgeInsets.only(right: 10.w),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16.r),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 130.w,
                                        height: 130.h,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFD2D9D9),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(16.r),
                                          ),
                                          image: DecorationImage(
                                            image: AssetImage(item.imageUrl),
                                            scale: 03,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10.h),
                                      Text(
                                        item.title,
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 30.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Excercise",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "3 Sets",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: const Color(0xff7B6F72),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "Set 1",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10.h),
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
