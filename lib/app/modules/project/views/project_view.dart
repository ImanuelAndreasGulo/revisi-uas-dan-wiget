// filepath: lib/app/modules/project/views/project_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/project_controller.dart';

class ProjectView extends GetView<ProjectController> {
  const ProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Project Base')),
      body: const Center(
        child: Text('Halaman Project Base'),
      ),
    );
  }
}
