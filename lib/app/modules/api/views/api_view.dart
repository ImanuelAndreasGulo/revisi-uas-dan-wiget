// filepath: lib/app/modules/api/views/api_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/api_controller.dart';

class ApiView extends GetView<ApiController> {
  const ApiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('API Integration')),
      body: const Center(
        child: Text('Halaman API Integration'),
      ),
    );
  }
}
