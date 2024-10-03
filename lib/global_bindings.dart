import 'package:countries/features/countries/controllers/country_controller.dart';
import 'package:get/get.dart';

class GlobalBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CountryController>(() => CountryController(), fenix: true);
  }
}
