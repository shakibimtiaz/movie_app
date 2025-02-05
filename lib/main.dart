import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'route/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.splashScreen,
      getPages: AppRoute.routes,
    );
  }
}