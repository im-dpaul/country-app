import 'package:countries/features/countries/screens/country_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String initialRoute = '/';

  static List<GetPage> pages = [
    GetPage(
      name: initialRoute,
      page: () => CountryScreen(),
    ),
  ];
}
