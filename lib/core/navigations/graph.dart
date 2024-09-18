import 'package:flutter_basics/alerts_feature/alert_screen.dart';
import 'package:flutter_basics/bottom_nav_feature/badges_bottom_nav/badges_bottom_nav_screen.dart';
import 'package:flutter_basics/bottom_nav_feature/bottom_nav_with_notch/bottom_nav_with_notch_screen.dart';
import 'package:flutter_basics/bottom_nav_feature/bottom_navigation_screen.dart';
import 'package:flutter_basics/core/navigations/routes.dart';
import 'package:flutter_basics/drop_down_feature/drop_down_screen.dart';
import 'package:flutter_basics/text_field/text_field_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../bottom_nav_feature/general_bottom_nav/general_bottom_nav.dart';
import '../../buttons_feature/buttons_screen.dart';
import '../../form_feature/form_screen.dart';
import '../../menu_feature/menu_screen.dart';

List<GetPage> routes = [
  GetPage(name: Routes.launcherScreen, page: () => const MainScreen()),
  GetPage(name: Routes.buttons, page: () => const ButtonsScreen()),
  GetPage(name: Routes.alerts, page: () => const AlertScreen()),
  GetPage(name: Routes.textField, page: () => TextFiledScreen()),
  GetPage(name: Routes.formScreen, page: () => FormScreen()),
  GetPage(name: Routes.dropDownScreen, page: () => const DropDownScreen()),
  GetPage(
      name: Routes.bottomNavigationScreen,
      page: () => const BottomNavigationScreen()),
  GetPage(name: Routes.generalBottomNav, page: () => const GeneralBottomNav()),
  GetPage(name: Routes.bottomNavWithBadges, page: () => BadgesBottomNav()),
  GetPage(name: Routes.bottomNavWithNotch, page: ()=> const BottomNavWithNotch())
];
