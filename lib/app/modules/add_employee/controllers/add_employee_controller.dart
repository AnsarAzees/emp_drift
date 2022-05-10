import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:yathra_employee/app/data/employee_provider.dart';
import 'package:yathra_employee/app/modules/home/models/employee_details.dart';

class AddEmployeeController extends GetxController {
  //Text editing controllers
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController employeeIdController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController suiteController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController zipcodeController = TextEditingController();

  //form key for validation
  final formKey = GlobalKey<FormState>();

  String? isNameValid(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter a name.";
    } else {
      return null;
    }
  }

  String? isEmployeeIdValid(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter an employee id.";
    } else {
      return null;
    }
  }

  String? isEmailValid(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter an email.";
    } else {
      return null;
    }
  }

  String? isPhoneValid(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter a phone number.";
    } else {
      return null;
    }
  }

  String? isStreetValid(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter a street name.";
    } else {
      return null;
    }
  }

  saveEmployee() async {
    if (formKey.currentState!.validate()) {
      EasyLoading.show();
      await EmployeeStore.to.addEmployeeDetails(EmployeeDetails(
          email: emailController.text,
          name: nameController.text,
          phone: phoneController.text,
          username: employeeIdController.text,
          address: Address(
            city: cityController.text,
            street: streetController.text,
            suite: suiteController.text,
            zipcode: zipcodeController.text,
          )));
      EasyLoading.dismiss();

      Get.back();
    }
  }
}
