import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/material_design_controller.dart';

class MaterialDesignView extends GetView<MaterialDesignController> {
  const MaterialDesignView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Design'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'Material Design Components',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          _StaticMenuItem(title: 'AppBar'),
          _StaticMenuItem(title: 'MaterialApp'),
          _StaticMenuItem(title: 'Scaffold'),
          _StaticMenuItem(title: 'Container'),
          _StaticMenuItem(title: 'Center'),
          _StaticMenuItem(title: 'Column'),
          _StaticMenuItem(title: 'Row'),
          _StaticMenuItem(title: 'ListView'),
          _StaticMenuItem(title: 'GridView'),
          _StaticMenuItem(title: 'Stack'),
          _StaticMenuItem(title: 'AspectRatio'),
          _StaticMenuItem(title: 'Padding'),
          _StaticMenuItem(title: 'Expanded'),
          _StaticMenuItem(title: 'SizedBox'),
          _StaticMenuItem(title: 'Card'),
          _StaticMenuItem(title: 'InkWell'),
          _StaticMenuItem(title: 'Image'),
          _StaticMenuItem(title: 'CircleAvatar'),
          _StaticMenuItem(title: 'Icon'),
          _StaticMenuItem(title: 'BottomSheet'),
          _StaticMenuItem(title: 'AlertDialog'),
          _StaticMenuItem(title: 'SnackBar'),
          _StaticMenuItem(title: 'Drawer'),
          _StaticMenuItem(title: 'BottomNavigationBar'),
        ],
      ),
    );
  }
}

class _StaticMenuItem extends StatelessWidget {
  final String title;
  const _StaticMenuItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}
