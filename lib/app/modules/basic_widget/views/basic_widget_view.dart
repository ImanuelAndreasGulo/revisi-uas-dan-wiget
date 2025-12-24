import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/basic_widget_controller.dart';

class BasicWidgetView extends GetView<BasicWidgetController> {
  const BasicWidgetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Widget'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'Basic Widget Examples',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          _StaticMenuItem(title: 'Text Widget'),
          _StaticMenuItem(title: 'Button Widget'),
          _StaticMenuItem(title: 'Image Widget'),
          _StaticMenuItem(title: 'Icon Widget'),
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
