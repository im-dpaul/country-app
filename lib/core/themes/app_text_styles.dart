import 'package:countries/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle f24w700Black = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );

  static const TextStyle f16w600Black = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    letterSpacing: 0.1,
  );

  static const TextStyle f14w500LightGrey = TextStyle(
    fontSize: 14,
    height: 1.2,
    fontWeight: FontWeight.w500,
    color: AppColors.lightGrey,
  );

  static const TextStyle f14w400Black = TextStyle(
    fontSize: 14,
    height: 1.2,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
}
