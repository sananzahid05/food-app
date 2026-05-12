import 'package:flutter/material.dart';

import 'package:food_app/core/constants/colors.dart';
import 'package:food_app/core/constants/text_style.dart';
import 'package:food_app/ui/home_screens/home_screen.dart';
import 'package:food_app/ui/login_screens/login_screen.dart';
import 'package:food_app/ui/profile_screens/edit_profile.dart';
import 'package:food_app/ui/profile_screens/profile_screen.dart';

class RootScreens extends StatefulWidget {
  const RootScreens({super.key});

  @override
  State<RootScreens> createState() => _RootScreensState();
}

class _RootScreensState extends State<RootScreens> {
  int myIndex = 0;
  List<Widget> widgetList = [
    LoginScreen(),
    HomeScreen(),
    ProfileScreen(),
    EditProfileScreen(),
    //Text('Home', style: style12_600)
    Text('Add', style: style12_600),

    // ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: widgetList[myIndex]),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: whiteColor,
        onTap: (index) {
          setState(() {
            // myIndex = index; // FIX: should be inside setState
          });
        },
        //currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/homeee.png'),
                color: blackColor),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/dashboarddd.png'),
                color: blackColor),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/settingzzz.png'),
                color: blackColor),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/searchhh.png'),
                color: blackColor),
            label: 'Search',
          ),
        ],
      ),
    );
  }
}
