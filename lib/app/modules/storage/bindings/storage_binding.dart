// filepath: lib/app/modules/storage/bindings/storage_binding.dart
import 'package:get/get.dart';
import '../controllers/storage_controller.dart';

class StorageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StorageController>(() => StorageController());
  }
}
