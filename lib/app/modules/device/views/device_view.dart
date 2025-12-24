// filepath: lib/app/modules/device/views/device_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/device_controller.dart';

class DeviceView extends GetView<DeviceController> {
  const DeviceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Device Features')),
      body: const Center(
        child: Text('Halaman Device Features'),
      ),
    );
  }
}
