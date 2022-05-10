import 'package:get/get.dart';
import 'package:yathra_employee/app/data/employee_provider.dart';
import 'package:yathra_employee/app/modules/home/models/employee_details.dart';

class HomeController extends GetxController {
  HomeController();
  static HomeController get to => Get.find();

  // saves search query
  final query = "".obs;

  // returns filtered employee list
  List<EmployeeDetails> employeeList() {
    var employeesListData = EmployeeStore.to.employees.value;
    if (employeesListData != null && query.value != "") {
      employeesListData = employeesListData.where((element) {
        return (element.name?.contains(query) ?? false) || (element.email?.contains(query) ?? false);
      }).toList();
    }
    return employeesListData ?? [];
  }

  @override
  void onInit() async {
    await EmployeeStore.to.getEmployeeDetails();
    super.onInit();
  }

  @override
  void onClose() {}
}
