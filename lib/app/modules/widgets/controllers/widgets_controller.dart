import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

class MenuItem {
  final String title;
  final String description;
  final IconData icon;
  final String route;

  MenuItem({
    required this.title,
    required this.description,
    required this.icon,
    required this.route,
  });
}

class WidgetsController extends GetxController {
  final searchQuery = ''.obs;

  final List<MenuItem> menuItems = [
    MenuItem(
      title: 'Widgets',
      description: 'Contoh widget di Flutter',
      icon: Icons.widgets,
      route: Routes.widgets,
    ),
    MenuItem(
      title: 'API Integration',
      description: 'REST API Integration',
      icon: Icons.cloud,
      route: Routes.api,
    ),
    MenuItem(
      title: 'Local Storage',
      description: 'Local Data Storage',
      icon: Icons.storage,
      route: Routes.storage,
    ),
    MenuItem(
      title: 'Device Features',
      description: 'Device Hardware Features',
      icon: Icons.phone_android,
      route: Routes.device,
    ),
    MenuItem(
      title: 'Project Base',
      description: 'Practical Study Cases',
      icon: Icons.school,
      route: Routes.project,
    ),
  ];

  List<MenuItem> get filteredMenuItems {
    if (searchQuery.value.isEmpty) {
      return menuItems;
    }
    final query = searchQuery.value.toLowerCase();
    return menuItems.where((item) {
      return item.title.toLowerCase().contains(query) ||
          item.description.toLowerCase().contains(query);
    }).toList();
  }

  void updateSearchQuery(String query) {
    searchQuery.value = query;
  }
}
