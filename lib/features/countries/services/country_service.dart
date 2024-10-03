import 'package:countries/features/countries/models/country_model.dart';
import 'package:dio/dio.dart';

class CountryService {
  final Dio _dio = Dio();

  Future<List<CountryModel>> fetchCountries() async {
    const List<String> urls = [
      'https://restcountries.com/v3.1/translation/germany',
      'https://restcountries.com/v3.1/translation/india',
      'https://restcountries.com/v3.1/translation/israel',
      'https://restcountries.com/v3.1/translation/lanka',
      'https://restcountries.com/v3.1/translation/italy',
      'https://restcountries.com/v3.1/translation/china',
      'https://restcountries.com/v3.1/translation/korea',
    ];

    List<CountryModel> countries = [];

    try {
      for (String url in urls) {
        final Response response = await _dio.get(url);
        if (response.statusCode == 200) {
          for (var data in response.data) {
            final country = CountryModel.fromJson(data);
            countries.add(country);
          }
        }
      }
    } catch (e) {
      throw Exception('Failed to fetch country data: $e');
    }

    return countries;
  }
}
