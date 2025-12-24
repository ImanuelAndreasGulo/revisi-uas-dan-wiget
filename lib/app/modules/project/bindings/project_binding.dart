// filepath: lib/app/modules/project/bindings/project_binding.dart
import 'package:get/get.dart';
import '../controllers/project_controller.dart';

class ProjectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProjectController>(() => ProjectController());
  }
}
