import 'package:get/get.dart';
import 'package:yathra_employee/app/data/employee_provider.dart';
import 'package:yathra_employee/services/local_storage.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocalStorage>(() => LocalStorageImpl());
    Get.put<EmployeeStore>(EmployeeStore(Get.find<LocalStorage>()), permanent: true);
  }
}
