import 'package:countries/core/constants/strings.dart';
import 'package:countries/core/themes/app_text_styles.dart';
import 'package:countries/features/countries/controllers/country_controller.dart';
import 'package:countries/features/countries/widgets/country_tile.dart';
import 'package:countries/features/countries/widgets/no_data_text.dart';
import 'package:countries/features/countries/widgets/refresh_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountryScreen extends StatelessWidget {
  CountryScreen({super.key});

  final CountryController _controller = Get.find<CountryController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: const Text(
            Strings.contryInfo,
            style: AppTextStyles.f24w700Black,
          ),
        ),
        body: _controller.isLoading
            ? const Center(child: CircularProgressIndicator())
            : _controller.countries.isEmpty
                ? const NoDataText()
                : ListView.separated(
                    itemCount: _controller.countries.length,
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.only(bottom: 24, top: 16),
                    itemBuilder: (context, index) {
                      return CountryTile(
                        country: _controller.countries[index],
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 12),
                  ),
        floatingActionButton: RefreshButton(
          visible: !_controller.isLoading,
          onRefresh: () {
            _controller.fetchCountries();
          },
        ),
      ),
    );
  }
}
