import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/core/theme/app_colors.dart';

class AppTextStyles {
  static TextStyle font18SemiBold = GoogleFonts.nunitoSans(
      fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.whiteColor);
  static TextStyle font12SemiBoldGreen = GoogleFonts.nunitoSans(
      fontSize: 12, fontWeight: FontWeight.w600, color: AppColors.greenColor);
  static TextStyle font12Regular = GoogleFonts.nunitoSans(
      fontSize: 12, fontWeight: FontWeight.w300, color: AppColors.greyColor);
  static TextStyle font12RegularWhite = GoogleFonts.nunitoSans(
      fontSize: 12, fontWeight: FontWeight.w300, color: AppColors.whiteColor);
  static TextStyle font12SemiBold = GoogleFonts.nunitoSans(
      fontSize: 12, fontWeight: FontWeight.w600, color: AppColors.greyColor);
}
