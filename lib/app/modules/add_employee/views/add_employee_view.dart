import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yathra_employee/app/components/input_textfield.dart';

import '../controllers/add_employee_controller.dart';

class AddEmployeeView extends GetView<AddEmployeeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddEmployee'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                InputTextField(
                  controller: controller.employeeIdController,
                  labelText: "Employee Id",
                  validation: controller.isEmployeeIdValid,
                ),
                InputTextField(
                  controller: controller.nameController,
                  labelText: "Name",
                  validation: controller.isNameValid,
                ),
                InputTextField(
                  controller: controller.emailController,
                  labelText: "Email",
                  validation: controller.isEmailValid,
                  keyboardType: TextInputType.emailAddress,
                ),
                InputTextField(
                  controller: controller.phoneController,
                  labelText: "Phone",
                  validation: controller.isPhoneValid,
                  keyboardType: TextInputType.phone,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Address',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                InputTextField(
                  controller: controller.streetController,
                  labelText: "Street",
                  validation: controller.isStreetValid,
                ),
                InputTextField(
                  controller: controller.suiteController,
                  labelText: "Suite",
                ),
                InputTextField(
                  controller: controller.cityController,
                  labelText: "City",
                ),
                InputTextField(
                  controller: controller.zipcodeController,
                  labelText: "Zipcode",
                  keyboardType: TextInputType.phone,
                ),
                TextButton(onPressed: controller.saveEmployee, child: Text('Save'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
