import 'package:countries/core/constants/strings.dart';
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
    return ListTile(
      leading: Image.network(
        country.flagUrl,
        fit: BoxFit.contain,
      ),
      title: Text(
        country.commonName,
        style: AppTextStyles.f16w600Black,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const Text(
                Strings.officialName,
                style: AppTextStyles.f14w500LightGrey,
              ),
              Text(
                country.officialName,
                style: AppTextStyles.f14w400Black,
              ),
            ],
          ),
          Row(
            children: [
              const Text(
                Strings.currency,
                style: AppTextStyles.f14w500LightGrey,
              ),
              Text(
                '${country.currencyName} (${country.currencyCode})',
                style: AppTextStyles.f14w400Black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
