// filepath: lib/app/modules/storage/views/storage_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/storage_controller.dart';

class StorageView extends GetView<StorageController> {
  const StorageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Locale Storage')),
      body: const Center(
        child: Text('Halaman Locale Storage'),
      ),
    );
  }
}
