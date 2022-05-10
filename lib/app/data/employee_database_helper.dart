import 'package:drift/drift.dart';
import 'package:yathra_employee/app/data/app_database.dart';
import 'package:yathra_employee/app/modules/home/models/employee_details.dart' as details;

part 'employee_database_helper.g.dart';

@DriftAccessor(tables: [Employee, Address])
class EmployeeDatabaseHelper extends DatabaseAccessor<AppDatabase> with _$EmployeeDatabaseHelperMixin {
  EmployeeDatabaseHelper(AppDatabase attachedDatabase) : super(attachedDatabase);

  Future<List<details.EmployeeDetails>?> getAllEmployees() async {
    final query = select(employee).join([
      leftOuterJoin(address, address.id.equalsExp(employee.address)),
    ]);

    var result = await query.get().then((rows) {
      return rows.map((e) {
        final addressValue = e.readTable(address);
        final employeeValue = e.readTable(employee);

        var employeeDetails = details.EmployeeDetails(
            name: employeeValue.name,
            address: details.Address(
              city: addressValue.city,
              street: addressValue.street,
              suite: addressValue.suite,
              zipcode: addressValue.zipcode,
            ),
            website: employeeValue.website,
            username: employeeValue.username,
            profileImage: employeeValue.profileImage,
            email: employeeValue.email,
            id: employeeValue.id,
            phone: employeeValue.phone);
        return employeeDetails;
      }).toList();
    });

    return result;
  }

  Future<int> insertEmployee(details.EmployeeDetails employeeData) async {
    int addressId = await into(address).insert(Addres(
      city: employeeData.address?.city,
      street: employeeData.address?.street,
      suite: employeeData.address?.suite,
      zipcode: employeeData.address?.zipcode,
    ));

    return into(employee).insert(EmployeeData(
        address: addressId,
        email: employeeData.email,
        name: employeeData.name,
        profileImage: employeeData.profileImage,
        username: employeeData.username,
        website: employeeData.website));
  }

  Future deleteAllEmployees() async {
    delete(address);
    delete(employee);
  }
}
