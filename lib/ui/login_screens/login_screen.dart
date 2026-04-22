import 'package:flutter/material.dart';
import 'package:food_app/core/constants/%20app_assets.dart';
import 'package:food_app/core/constants/auth_text_fields.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  height: 249,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppAssets.letslogin),
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
                      _buildLabel("Email"),
                      TextFormField(
                        obscureText: false,
                        decoration: fieldDecoration.copyWith(
                          hintText: "Enter your email",
                        ),
                      ),
                      SizedBox(height: 20),
                      _buildLabel("Password"),
                      TextFormField(
                        obscureText: false,
                        decoration: fieldDecoration.copyWith(
                            hintText: "Enter your password"),
                      ),

                      // Remember Me & Forgot Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: false, onChanged: (v) {}),
                              Text("Remember me"),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("Forgot password",
                                style: TextStyle(color: Colors.deepPurple)),
                          ),
                        ],
                      ),

                      // Login Button
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
                          child: Text("Login",
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
                              text: "Don't have an account? ",
                              style: TextStyle(color: Colors.grey[700]),
                              children: [
                                TextSpan(
                                  text: "Signup",
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
