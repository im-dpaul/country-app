import 'package:countries/features/countries/models/country_model.dart';
import 'package:countries/features/countries/services/country_service.dart';
import 'package:get/get.dart';

class CountryController extends GetxController {
  final RxBool _isLoading = RxBool(false);
  final RxList<CountryModel> _countries = RxList<CountryModel>([]);

  bool get isLoading => _isLoading.value;
  List<CountryModel> get countries => _countries;

  final CountryService _service = CountryService();

  @override
  void onInit() {
    fetchCountries();
    super.onInit();
  }

  void setIsLoading(bool value) {
    _isLoading.value = value;
  }

  void fetchCountries() async {
    try {
      setIsLoading(true);
      _countries.clear();

      List<CountryModel> fetchedCountries = await _service.fetchCountries();
      _countries.assignAll(fetchedCountries);
    } catch (e) {
      Get.snackbar('Error', 'Could not fetch countries data!');
    } finally {
      setIsLoading(false);
    }
  }
}
