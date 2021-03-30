import 'package:get/get.dart';
import '../modules/home/home_view.dart';
import '../modules/login/login_view.dart';

class Routes {
  static final route = [
    GetPage(
      name: '/loginView',
      page: () => LoginView(),
    ),
    GetPage(
      name: '/homeView',
      page: () => HomeView(),
    ),
  ];
}
