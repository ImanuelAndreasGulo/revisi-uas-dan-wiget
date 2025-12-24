import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/input_forms_controller.dart';

class InputFormsView extends GetView<InputFormsController> {
  const InputFormsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Forms'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'Form Input Examples',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          _StaticMenuItem(title: 'TextField'),
          _StaticMenuItem(title: 'Checkbox'),
          _StaticMenuItem(title: 'Radio Button'),
          _StaticMenuItem(title: 'Switch'),
          _StaticMenuItem(title: 'Dropdown'),
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
