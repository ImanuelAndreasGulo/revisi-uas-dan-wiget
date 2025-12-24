import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/layout_structure_controller.dart';

class LayoutStructureView extends GetView<LayoutStructureController> {
  const LayoutStructureView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Structure'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'Layout Structure Examples',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          _StaticMenuItem(title: 'Container Layout'),
          _StaticMenuItem(title: 'Row & Column Layout'),
          _StaticMenuItem(title: 'Stack Layout'),
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
