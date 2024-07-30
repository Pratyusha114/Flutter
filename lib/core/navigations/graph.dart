import 'package:flutter_basics/bottom_nav_feature/bottom_navigation_screen.dart';
import 'package:flutter_basics/core/navigations/routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../buttons_feature/buttons_sreen.dart';
import '../../menu_feature/menu_screen.dart';

List<GetPage> routes = [
  GetPage(name: Routes.launcherScreen, page: () => const MainScreen()),
  GetPage(name: Routes.buttons, page: () => const ButtonsScreen()),
  GetPage(
      name: Routes.bottomNavigationScreen,
      page: () => const BottomNavigationScreen())
];
