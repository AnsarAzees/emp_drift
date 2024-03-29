import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yathra_employee/app/modules/employee_details/controllers/employee_details_controller.dart';
import 'package:yathra_employee/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.ADD_EMPLOYEE);
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text(
          'Employees',
          style: TextStyle(color: Colors.black, fontSize: 35),
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(45.0),
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Material(
                  color: Colors.grey[300],
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.search, color: Colors.grey),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration.collapsed(
                            hintText: ' Search by name or email',
                          ),
                          onChanged: (value) {
                            controller.query.value = value;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )),
      ),
      body: Obx(() {
        return controller.employeeList().isEmpty
            ? Center(
                child: Text('Employee list is empty.'),
              )
            : ListView.separated(
                itemCount: controller.employeeList().length,
                padding: EdgeInsets.all(15),
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 20,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  final employee = controller.employeeList()[index];
                  return Card(
                    elevation: 3,
                    child: ListTile(
                      onTap: () {
                        Get.put(EmployeeDetailsController());
                        EmployeeDetailsController.to.employeeDetails.value = employee;
                        Get.toNamed(Routes.EMPLOYEE_DETAILS);
                      },
                      title: Text(employee.name ?? ""),
                      subtitle: Text(employee.email ?? ""),
                      leading: CircleAvatar(
                        radius: 40,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Hero(
                            tag: '${employee.id}',
                            child: Icon(Icons.account_circle),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
      }),
    );
  }
}
