import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/constants/colors.dart';
import 'package:food_app/core/constants/text_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        title: const Text(
          "Menu",
          style: TextStyle(color: lightPurpleColor),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.notifications_none, color: Colors.black),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            // Profile Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xffEDE3DD),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person),
                      ),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Text(
                          "Hudson Alvarez",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Icon(Icons.edit, color: Colors.grey.shade700),
                    ],
                  ),

                  const SizedBox(height: 16),

                  /// 🔸 Divider (like your UI dashed line)
                  Divider(
                    color: Colors.orange.withOpacity(0.2),
                    thickness: 0.8,
                  ),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("My Balance",
                                style: style14_500.copyWith(
                                    color: lightPurpleColor)),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 16,
                              color: Colors.orange.shade600,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "\$200",
                              style: style24_600.copyWith(color: Colors.orange),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.account_balance_wallet,
                        color: Colors.orange.shade600,
                      ),
                      const SizedBox(width: 12),
                      const Icon(Icons.add_circle_outline),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 80),

            // 10.verticalSpace, Profile Options
            buildMenuTile(
              icon: Icons.favorite_border,
              title: "Favorites",
              onTap: () {},
            ),
            10.verticalSpace,
            buildMenuTile(
              icon: Icons.upgrade,
              title: "Upgrade Subscription",
              onTap: () {},
            ),
            10.verticalSpace,
            buildMenuTile(
              icon: Icons.history,
              title: "Order History",
              onTap: () {},
            ),
            10.verticalSpace,
            buildMenuTile(
              icon: Icons.notifications_none,
              title: "Notifications",
              onTap: () {},
            ),
            10.verticalSpace,
            buildMenuTile(
              icon: Icons.logout,
              title: "Logout",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  /// 🔥 Reusable ListTile Method
  Widget buildMenuTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: lightOrangeColor.withOpacity(0.05),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.orange.shade600),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }
}
