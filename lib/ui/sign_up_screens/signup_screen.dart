import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/constants/%20app_assets.dart';
import 'package:food_app/core/constants/auth_text_fields.dart';
import 'package:food_app/core/constants/colors.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                // 1. Orange Header Section
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppAssets.letsSignIn),
                      fit: BoxFit.cover,
                    ),
                    color: Color(0xFFE67E4D), // Matching the orange shade
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ),
                  ),
                ),

                // 2. Form Section
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildLabel("Full Name"),
                      TextFormField(
                        obscureText: false,
                        decoration: fieldDecoration.copyWith(
                          hintText: "Enter your name",
                        ),
                      ),
                      20.verticalSpace,
                      _buildLabel("Email"),
                      TextFormField(
                        obscureText: false,
                        decoration: fieldDecoration.copyWith(
                            hintText: "Enter your email"),
                      ),
                      20.verticalSpace,
                      _buildLabel("Password"),
                      TextFormField(
                        obscureText: false,
                        decoration: fieldDecoration.copyWith(
                          hintText: "Enter your password",
                        ),
                      ),
                      20.verticalSpace,
                      _buildLabel("Confirm Password"),
                      TextFormField(
                        obscureText: false,
                        decoration: fieldDecoration.copyWith(
                            hintText: "Confirm your password"),
                      ),
                      20.verticalSpace,
                      // Remember Me & Forgot Password

                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFE67E4D),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                          child: Text("Signup",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                        ),
                      ),

                      // "Or" Divider
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Row(
                          children: [
                            Expanded(child: Divider()),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text("Or",
                                  style: TextStyle(color: Colors.grey)),
                            ),
                            Expanded(child: Divider()),
                          ],
                        ),
                      ),

                      // Social Buttons
                      socialButton(
                        text: "Continue with Google",
                        imagePath: AppAssets.google,
                      ),
                      const SizedBox(height: 15),

                      socialButton(
                        text: "Continue with Facebook",
                        imagePath: AppAssets.fb,
                      ),
                      const SizedBox(height: 15),

                      socialButton(
                        text: "Continue with Microsoft",
                        imagePath: AppAssets.ms,
                      ),

                      // Signup Link
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: RichText(
                            text: TextSpan(
                              text: "Already have an account? ",
                              style: TextStyle(color: lightPurpleColor),
                              children: [
                                TextSpan(
                                  text: "Login",
                                  style: TextStyle(
                                      color: Color(0xFFE67E4D),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper widget for Labels
  Widget _buildLabel(String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(label, style: TextStyle(fontWeight: FontWeight.w500)),
    );
  }

  // Helper widget for Social Buttons
  Widget socialButton({
    required String text,
    required String imagePath,
  }) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFFDF7F5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 24,
            width: 24,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
