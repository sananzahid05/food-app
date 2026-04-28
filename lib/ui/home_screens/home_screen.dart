import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/constants/%20app_assets.dart';
import 'package:food_app/core/constants/text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 10),
      body: Column(
        children: [
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(10)),
              height: 40,
              width: 40,
              child: Center(
                  child: Text("R",
                      style: style20_500.copyWith(color: Colors.white))),
            ),
            title: Text(
              "Good Morning",
              style: style14_500,
            ),
            subtitle: Text(
              "Hello, Ryan Vaccaro",
              style: style12_400,
            ),
            trailing: Icon(Icons.notifications),
          ),
          10.verticalSpace,
          Container(
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: AssetImage(
 AppAssets.epicdeal), // from assets/static_assets/
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
