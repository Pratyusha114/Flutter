import 'package:flutter_basics/alerts_feature/alert_screen.dart';
import 'package:flutter_basics/bottom_nav_feature/badges_bottom_nav/badges_bottom_nav_screen.dart';
import 'package:flutter_basics/bottom_nav_feature/bottom_navigation_screen.dart';
import 'package:flutter_basics/core/navigations/routes.dart';
import 'package:flutter_basics/drop_down_feature/drop_down_screen.dart';
import 'package:flutter_basics/list_view_feature/general_list_view_screen.dart';
import 'package:flutter_basics/list_view_feature/grid_view/grid_view_screen.dart';
import 'package:flutter_basics/list_view_feature/grid_view/grid_view_with_count.dart';
import 'package:flutter_basics/list_view_feature/grid_view/grid_view_with_extent.dart';
import 'package:flutter_basics/list_view_feature/list_view_screen.dart';
import 'package:flutter_basics/list_view_feature/staggered_grid_view.dart';
import 'package:flutter_basics/text_field/text_field_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../bottom_nav_feature/general_bottom_nav/general_bottom_nav.dart';
import '../../buttons_feature/buttons_screen.dart';
import '../../form_feature/form_screen.dart';
import '../../list_view_feature/grid_view/grid_view_with_builder.dart';
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

  GetPage(name: Routes.listViewScreen, page: () => ListViewScreen()),
  GetPage(name: Routes.generalListView, page: () => const GeneralListView()),
  GetPage(name: Routes.gridView, page: () => const GridViewScreen()),
  GetPage(name: Routes.gridViewWithCount, page: () => const GridViewWithCount()),
  GetPage(name: Routes.gridViewWithBuilder, page: () => const GridViewWithBuilder()),
  GetPage(name: Routes.gridViewWithExtent, page: () => const GridViewWithExtent()),
  GetPage(name: Routes.staggeredListView, page: () => const StaggeredGridView()),
];
