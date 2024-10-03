import 'package:get/get.dart';

class CountryController extends GetxController {
  final RxBool _isLoading = RxBool(false);

  bool get isLoading => _isLoading.value;
}
