class Member {
  String? name;
  int? age;
  String? phoneNumber;
  String? address;
  double? salary;

  void printSalary() {
    print('Salary: \$${salary}');
  }
}

class Employee extends Member {
  String? specialization;

  void displayEmployeeDetails() {
    print('Employee Details:');
    print('Name: $name');
    print('Age: $age');
    print('Phone Number: $phoneNumber');
    print('Address: $address');
    print('Specialization: $specialization');
    printSalary();
  }
}

class Manager extends Member {
  String? department;

  void displayManagerDetails() {
    print('Manager Details:');
    print('Name: $name');
    print('Age: $age');
    print('Phone Number: $phoneNumber');
    print('Address: $address');
    print('Department: $department');
    printSalary();
  }
}

void main() {
  Employee employee = Employee();
  employee.name = 'John Doe';
  employee.age = 30;
  employee.phoneNumber = '123-456-7890';
  employee.address = '123 Elm Street';
  employee.salary = 50000;
  employee.specialization = 'Software Development';

  employee.displayEmployeeDetails();
  print('');

  Manager manager = Manager();
  manager.name = 'Jane Smith';
  manager.age = 40;
  manager.phoneNumber = '098-765-4321';
  manager.address = '456 Oak Avenue';
  manager.salary = 80000;
  manager.department = 'IT Department';

  manager.displayManagerDetails();
}
