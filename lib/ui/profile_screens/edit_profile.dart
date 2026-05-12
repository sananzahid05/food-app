import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/constants/text_style.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.verticalSpace,
              _topBar(context),
              20.verticalSpace,
              _profileCard(),
              20.verticalSpace,
              _field("Full Name"),
              _field("Email"),
              _field("Phone No"),
              Row(
                children: [
                  Expanded(child: _field("Address Type")),
                  12.horizontalSpace,
                  Expanded(child: _field("Unit")),
                ],
              ),
              _field("Address", maxLines: 3),
              Row(
                children: [
                  Expanded(child: _field("City")),
                  12.horizontalSpace,
                  Expanded(child: _field("Province")),
                  12.horizontalSpace,
                  Expanded(child: _field("Zip")),
                ],
              ),
              _field("Order Type"),
              _field("Current Password", isPassword: true),
              _field("New Password", isPassword: true),
              24.verticalSpace,
              _saveButton(),
              30.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }

  Widget _topBar(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 42.w,
          width: 42.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        16.horizontalSpace,
        Text("Edit Profile", style: style18_600),
      ],
    );
  }

  Widget _profileCard() {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: const Color(0xffFFF4ED),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 32.r,
            backgroundColor: Colors.white,
            child: Icon(Icons.camera_alt, color: Colors.orange, size: 26.sp),
          ),
          16.horizontalSpace,
          Text("Hudson Alvarez", style: style20_600),
        ],
      ),
    );
  }

  Widget _field(String hint, {bool isPassword = false, int maxLines = 1}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 14.h),
      child: TextField(
        obscureText: isPassword,
        maxLines: maxLines,
        style: style14_500,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: style14_400.copyWith(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.r),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.r),
            borderSide: BorderSide(color: Colors.orange),
          ),
        ),
      ),
    );
  }

  Widget _saveButton() {
    return SizedBox(
      width: double.infinity,
      height: 55.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrangeAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        onPressed: () {},
        child: Text(
          "Save Changes",
          style: style16_600.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
