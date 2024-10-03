import 'package:countries/core/constants/strings.dart';
import 'package:countries/core/themes/app_colors.dart';
import 'package:countries/core/themes/app_text_styles.dart';
import 'package:countries/features/countries/models/country_model.dart';
import 'package:flutter/material.dart';

class CountryTile extends StatelessWidget {
  final CountryModel country;

  const CountryTile({
    super.key,
    required this.country,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: AppColors.lightGrey.withOpacity(0.15),
        borderRadius: BorderRadius.circular(6),
      ),
      child: ListTile(
        leading: Image.network(
          country.flagUrl,
          width: 88,
          height: 60,
          fit: BoxFit.fill,
        ),
        title: Text(
          country.commonName,
          style: AppTextStyles.f16w600Black,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 2),
            RichText(
              text: TextSpan(
                text: Strings.officialName,
                style: AppTextStyles.f14w500LightGrey,
                children: [
                  TextSpan(
                    text: country.officialName,
                    style: AppTextStyles.f14w400Black,
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: Strings.currency,
                style: AppTextStyles.f14w500LightGrey,
                children: [
                  TextSpan(
                    text: '${country.currencyName} (${country.currencyCode})',
                    style: AppTextStyles.f14w400Black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
