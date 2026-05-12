import 'package:flutter/material.dart';

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
