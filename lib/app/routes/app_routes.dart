part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const home = _Paths.home;
  static const widgets = _Paths.widgets;
  static const api = _Paths.api;
  static const storage = _Paths.storage;
  static const device = _Paths.device;
  static const project = _Paths.project;

  // Widget detail routes
  static const appBar = _Paths.appBar;
  static const materialApp = _Paths.materialApp;
  static const scaffold = _Paths.scaffold;
  static const bottomNavigationBar = _Paths.bottomNavigationBar;
  static const navigationBar = _Paths.navigationBar;
  static const navigationDrawer = _Paths.navigationDrawer;
  static const navigationRail = _Paths.navigationRail;
  static const drawer = _Paths.drawer;
  static const floatingActionButton = _Paths.floatingActionButton;
  static const snackBar = _Paths.snackBar;
  static const bottomSheet = _Paths.bottomSheet;
  static const card = _Paths.card;
  static const chip = _Paths.chip;
  static const rawChip = _Paths.rawChip;
  static const circularProgressIndicator = _Paths.circularProgressIndicator;
  static const linearProgressIndicator = _Paths.linearProgressIndicator;
  static const datePicker = _Paths.datePicker;
  static const timePicker = _Paths.timePicker;
}

abstract class _Paths {
  _Paths._();

  static const home = '/';
  static const widgets = '/widgets';
  static const api = '/api-integration';
  static const storage = '/local-storage';
  static const device = '/device-features';
  static const project = '/project-base';

  // Widget detail paths
  static const appBar = '/widgets/appbar';
  static const materialApp = '/widgets/material-app';
  static const scaffold = '/widgets/scaffold';
  static const bottomNavigationBar = '/widgets/bottom-navigation-bar';
  static const navigationBar = '/widgets/navigation-bar';
  static const navigationDrawer = '/widgets/navigation-drawer';
  static const navigationRail = '/widgets/navigation-rail';
  static const drawer = '/widgets/drawer';
  static const floatingActionButton = '/widgets/fab';
  static const snackBar = '/widgets/snackbar';
  static const bottomSheet = '/widgets/bottom-sheet';
  static const card = '/widgets/card';
  static const chip = '/widgets/chip';
  static const rawChip = '/widgets/raw-chip';
  static const circularProgressIndicator =
      '/widgets/circular-progress-indicator';
  static const linearProgressIndicator = '/widgets/linear-progress-indicator';
  static const datePicker = '/widgets/date-picker';
  static const timePicker = '/widgets/time-picker';
}
