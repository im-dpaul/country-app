import 'package:countries/core/constants/strings.dart';
import 'package:countries/core/themes/app_text_styles.dart';
import 'package:countries/features/countries/controllers/country_controller.dart';
import 'package:countries/features/countries/models/country_model.dart';
import 'package:countries/features/countries/widgets/country_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountryScreen extends StatelessWidget {
  CountryScreen({super.key});

  final CountryController _controller = Get.find<CountryController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          Strings.contryInfo,
          style: AppTextStyles.f24w700Black,
        ),
      ),
      body: Obx(() {
        if (_controller.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
          itemBuilder: (context, index) {
            return CountryTile(
              country: CountryModel(
                commonName: 'India',
                officialName: 'India',
                currencyCode: '₹',
                currencyName: 'Indian rupee',
                flagUrl: 'https://flagcdn.com/w320/in.png',
              ),
            );
          },
        );
      }),
    );
  }
}
