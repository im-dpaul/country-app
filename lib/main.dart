import 'package:countries/core/routes/app_routes.dart';
import 'package:countries/global_bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Country App',
      initialRoute: AppRoutes.initialRoute,
      initialBinding: GlobalBindings(),
      getPages: AppRoutes.pages,
      debugShowCheckedModeBanner: false,
    );
  }
}
