import 'package:flutter/material.dart';
import 'package:food_app/core/constants/colors.dart';
import 'package:food_app/core/constants/text_style.dart';

final fieldDecoration = InputDecoration(
  hintText: 'Enter your email',
  hintStyle: style12_400.copyWith(color: lightPurpleColor, fontSize: 14),
  contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
  fillColor: whiteColor,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: Color(0xffEEEEEE), width: 1),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: Color(0xffEEEEEE), width: 1),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: Color(0xffEEEEEE), width: 1),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: Color(0xffEEEEEE), width: 1),
  ),
  disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: Color(0xffEEEEEE), width: 1),
  ),
);
