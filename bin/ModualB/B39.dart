import 'B36.dart';

class member{
  String? name;
  int? age;
  int? phoneNumber;
  String? address;
  double? salary;
  void display(){
    print("The salary is := $salary");
  }
}
class Employe extends member{
  String? Specilixation;
}
class Manager extends member{
  String? department;
}
void main(){
  var employer = Employe();
  employer.name = "parth";
  employer.Specilixation="Software Devlopment";
  employer.salary=50000;
  employer.age = 21;
  employer.address = "b/1111 suman sail";


  // second class To Create with same property
  var manager  = Manager();
  manager.name = "Gavrang";
  manager.department="Engineering";
  manager.salary=80000;
  manager.address="B/1111 suman sail";
  manager.phoneNumber=84000;
  employer.display();
  manager.display();
}