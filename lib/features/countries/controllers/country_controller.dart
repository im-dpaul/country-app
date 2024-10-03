import 'package:countries/features/countries/models/country_model.dart';
import 'package:countries/features/countries/services/country_service.dart';
import 'package:get/get.dart';

class CountryController extends GetxController {
  final RxBool _isLoading = RxBool(false);
  final RxList<CountryModel> _countries = RxList<CountryModel>([]);
  final RxBool _isReversedFilter = RxBool(true);
  final RxString _filterQuery = RxString('');

  bool get isLoading => _isLoading.value;
  List<CountryModel> get countries => _countries;
  String get filterQuery => _filterQuery.value;

  final CountryService _service = CountryService();

  @override
  void onInit() {
    fetchCountries();
    super.onInit();
  }

  /// Set loading status of screen
  void setIsLoading(bool value) {
    _isLoading.value = value;
  }

  /// Fetch countries data from api
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

  /// Filter countries data alphabetically & reverse
  void filterCountriesAlphabetically() {
    _isReversedFilter.value = !_isReversedFilter.value;
    _countries.sort((a, b) => a.commonName.compareTo(b.commonName));
    if (_isReversedFilter.value) {
      _countries.assignAll(_countries.reversed.toList());
    }
  }

  /// --- Not implemented in UI ---
  /// Filter countries data by region
  void filterCountriesByRegion() {
    String region = _filterQuery.value;
    _countries.sort((a, b) => a.region.compareTo(b.region));
    if (region.isNotEmpty) {
      _countries.retainWhere((country) =>
          country.region.toLowerCase().contains(region.toLowerCase()));
    }
  }
}
