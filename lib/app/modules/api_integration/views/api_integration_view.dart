import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/api_integration_controller.dart';

class ApiIntegrationView extends GetView<ApiIntegrationController> {
  const ApiIntegrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Integration'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Text(
          'API Integration',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
