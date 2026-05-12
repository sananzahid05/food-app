import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/constants/%20app_assets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:food_app/core/constants/colors.dart';
import 'package:food_app/core/constants/text_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        appBar: AppBar(toolbarHeight: 10),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _header(),
              12.verticalSpace,
              _bannerSlider(),
              12.verticalSpace,
              _indicator(),
              16.verticalSpace,
              _sectionTitle("Categories"),
              10.verticalSpace,
              _categories(),
              16.verticalSpace,
              _sectionTitle("Popular this week"),
              10.verticalSpace,
              const EpicDeals(),
              16.verticalSpace,
              _sectionTitle("Recommended"),
              10.verticalSpace,
              const EpicDeals(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return ListTile(
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
    );
  }

  Widget _bannerSlider() {
    return SizedBox(
      height: 160.h,
      child: PageView.builder(
        controller: _controller,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
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
    );
  }

  Widget _indicator() {
    return Center(
      child: SmoothPageIndicator(
        controller: _controller,
        count: 5,
        effect: WormEffect(
          dotHeight: 8.h,
          dotWidth: 8.w,
          activeDotColor: Colors.deepOrangeAccent,
        ),
      ),
    );
  }

  Widget _categories() {
    return SizedBox(
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
                6.verticalSpace,
                Text(
                  "Fast Foods",
                  style: style14_400.copyWith(color: lightPurpleColor),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          Text(title, style: style16_500),
          const Spacer(),
          Text(
            "See All",
            style: style14_400.copyWith(color: Colors.orange),
          ),
        ],
      ),
    );
  }
}

class EpicDeals extends StatelessWidget {
  const EpicDeals({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: Image.asset(
                AppAssets.epicDeal,
                height: 120.h,
                width: 200.w,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
