import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

import '../modules/widgets/bindings/widgets_binding.dart';
import '../modules/widgets/views/widgets_view.dart';

import '../modules/api/bindings/api_binding.dart';
import '../modules/api/views/api_view.dart';

import '../modules/storage/bindings/storage_binding.dart';
import '../modules/storage/views/storage_view.dart';

import '../modules/device/bindings/device_binding.dart';
import '../modules/device/views/device_view.dart';

import '../modules/project/bindings/project_binding.dart';
import '../modules/project/views/project_view.dart';

// Detail demo pages for each Material widget
import '../../pages/appbar_demo.dart';
import '../../pages/materialapp_demo.dart';
import '../../pages/scaffold_demo.dart';
import '../../pages/bottom_navigation_bar_demo.dart';
import '../../pages/navigation_bar_demo.dart';
import '../../pages/navigation_drawer_demo.dart';
import '../../pages/navigation_rail_demo.dart';
import '../../pages/drawer_demo.dart';
import '../../pages/floating_action_button_demo.dart';
import '../../pages/snackbar_demo.dart';
import '../../pages/bottom_sheet_demo.dart';
import '../../pages/card_demo.dart';
import '../../pages/chip_demo.dart';
import '../../pages/raw_chip_demo.dart';
import '../../pages/circular_progress_indicator_demo.dart';
import '../../pages/linear_progress_indicator_demo.dart';
import '../../pages/date_picker_demo.dart';
import '../../pages/time_picker_demo.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = <GetPage<dynamic>>[
    GetPage(
      name: Routes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.widgets,
      page: () => const WidgetsView(),
      binding: WidgetsBinding(),
    ),
    GetPage(
      name: Routes.api,
      page: () => const ApiView(),
      binding: ApiBinding(),
    ),
    GetPage(
      name: Routes.storage,
      page: () => const StorageView(),
      binding: StorageBinding(),
    ),
    GetPage(
      name: Routes.device,
      page: () => const DeviceView(),
      binding: DeviceBinding(),
    ),
    GetPage(
      name: Routes.project,
      page: () => const ProjectView(),
      binding: ProjectBinding(),
    ),

    // Detail pages using existing demo implementations
    GetPage(name: Routes.appBar, page: () => AppBarDemo()),
    GetPage(name: Routes.materialApp, page: () => MaterialAppDemo()),
    GetPage(name: Routes.scaffold, page: () => ScaffoldDemo()),
    GetPage(
        name: Routes.bottomNavigationBar,
        page: () => BottomNavigationBarDemo()),
    GetPage(name: Routes.navigationBar, page: () => NavigationBarDemo()),
    GetPage(name: Routes.navigationDrawer, page: () => NavigationDrawerDemo()),
    GetPage(name: Routes.navigationRail, page: () => NavigationRailDemo()),
    GetPage(name: Routes.drawer, page: () => DrawerDemo()),
    GetPage(
        name: Routes.floatingActionButton,
        page: () => FloatingActionButtonDemo()),
    GetPage(name: Routes.snackBar, page: () => SnackBarDemo()),
    GetPage(name: Routes.bottomSheet, page: () => BottomSheetDemo()),
    GetPage(name: Routes.card, page: () => CardDemo()),
    GetPage(name: Routes.chip, page: () => ChipDemo()),
    GetPage(name: Routes.rawChip, page: () => RawChipDemo()),
    GetPage(
        name: Routes.circularProgressIndicator,
        page: () => CircularProgressIndicatorDemo()),
    GetPage(
        name: Routes.linearProgressIndicator,
        page: () => LinearProgressIndicatorDemo()),
    GetPage(name: Routes.datePicker, page: () => DatePickerDemo()),
    GetPage(name: Routes.timePicker, page: () => TimePickerDemo()),
  ];
}
