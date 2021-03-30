import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app_controller.dart';
import 'components/constants.dart';
import 'components/routes.dart';

void main() {
  Get.put(AppController());
  WidgetsFlutterBinding.ensureInitialized(); // Espera carregar as dependencias
  runApp(
    GetMaterialApp(
      title: 'AppProduct',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.rightToLeft,
      getPages: Routes.route,
      initialRoute: '/loginView',
      theme: ThemeData(
        primarySwatch: primaryColor,
      ),
    ),
  );
}