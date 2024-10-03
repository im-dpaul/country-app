import 'package:countries/core/constants/strings.dart';
import 'package:countries/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class NoDataText extends StatelessWidget {
  const NoDataText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        Strings.noCountryData,
        style: AppTextStyles.f14w400Black,
      ),
    );
  }
}
