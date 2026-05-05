import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/constants/%20app_assets.dart';
import 'package:food_app/core/constants/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:food_app/core/constants/text_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 10),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
              leading: Container(
                height: 40.w,
                width: 40.w,
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                alignment: Alignment.center,
                child: Text(
                  "R",
                  style: style20_500.copyWith(color: Colors.white),
                ),
              ),
              title: Text("Good Morning", style: style14_500),
              subtitle: Text("Hello, Ryan Vaccaro", style: style12_400),
              trailing: const Icon(Icons.notifications),
            ),
            12.verticalSpace,
            SizedBox(
              height: 160.h,
              child: PageView.builder(
                controller: _controller,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: index == 0 ? 12.w : 8.w,
                      right: 8.w,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.r),
                      child: Image.asset(
                        AppAssets.epicDeal,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            12.verticalSpace,
            Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: 5,
                effect: WormEffect(
                  dotHeight: 8.h,
                  dotWidth: 8.w,
                  activeDotColor: Colors.deepOrangeAccent,
                ),
              ),
            ),
            20.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  Text("Categories", style: style16_500),
                  const Spacer(),
                  Text(
                    "See All",
                    style: style14_400.copyWith(color: Colors.orange),
                  ),
                ],
              ),
            ),
            10.verticalSpace,
            SizedBox(
              height: 120.h,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 12.w),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30.r,
                          backgroundColor: Colors.lightBlueAccent,
                        ),
                        5.verticalSpace,
                        Text("Fast Foods",
                            style:
                                style14_400.copyWith(color: lightPurpleColor)),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  Text("Popular this week", style: style16_500),
                  const Spacer(),
                  Text(
                    "See All",
                    style: style14_400.copyWith(color: Colors.orange),
                  ),
                ],
              ),
            ),
            10.verticalSpace,
            ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 12.h),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.r),
                        child: Image.asset(
                          AppAssets.epicDeal,
                          height: 80.h,
                          width: 80.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                      12.horizontalSpace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Veggie tomato mix", style: style14_500),
                          5.verticalSpace,
                          Text("\$12.00",
                              style:
                                  style14_500.copyWith(color: Colors.orange)),
                        ],
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
