import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yathra_employee/app/components/value_display.dart';

import '../controllers/employee_details_controller.dart';

class EmployeeDetailsView extends GetView<EmployeeDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() {
          return Text(
            controller.employeeDetails.value.name ?? "",
            style: TextStyle(color: Colors.black, fontSize: 30),
          );
        }),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ValueDisplayWidget(
                      title: "Name",
                      value: controller.employeeDetails.value.name ?? "",
                    ),
                    ValueDisplayWidget(
                      title: "Employee id",
                      value: controller.employeeDetails.value.username ?? "",
                    ),
                    ValueDisplayWidget(
                      title: "Email",
                      value: controller.employeeDetails.value.email ?? "",
                    ),
                    ValueDisplayWidget(title: "Address", value: controller.address),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
