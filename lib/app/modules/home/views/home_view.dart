import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../../../routes/app_pages.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Mobile Programming'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF7F5AF0), Color(0xFF2CB67D)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 16),
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 4),
            child: Text(
              'Modul Praktikum  Universitas Matana',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
          ),
          _HomeMenuTile(
            icon: Icons.widgets,
            color: Colors.teal,
            title: 'Widgets',
            subtitle: 'Contoh widget di flutter',
            routeName: Routes.widgets,
          ),
          _HomeMenuTile(
            icon: Icons.cloud_sync,
            color: Colors.indigo,
            title: 'API Integration',
            subtitle: 'contoh latihan webservice',
            routeName: Routes.api,
          ),
          _HomeMenuTile(
            icon: Icons.storage,
            color: Colors.deepOrange,
            title: 'Locale Storage',
            subtitle: 'contoh latihan penyimpanan di lokal',
            routeName: Routes.storage,
          ),
          _HomeMenuTile(
            icon: Icons.devices,
            color: Colors.green,
            title: 'Device Features',
            subtitle: 'contoh latihan mengakses hardware',
            routeName: Routes.device,
          ),
          _HomeMenuTile(
            icon: Icons.bolt,
            color: Colors.amber,
            title: 'Project Base',
            subtitle: 'contoh latihan studi kasus',
            routeName: Routes.project,
          ),
        ],
      ),
    );
  }
}

class _HomeMenuTile extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  final String subtitle;
  final String? routeName;

  const _HomeMenuTile({
    required this.icon,
    required this.color,
    required this.title,
    required this.subtitle,
    this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color.withOpacity(0.15),
        child: Icon(icon, color: color),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.chevron_right),
      onTap: routeName != null ? () => Get.toNamed(routeName!) : null,
    );
  }
}

// Grid material widgets sekarang hanya ada di WidgetsView (app/modules/widgets/views/widgets_view.dart)
