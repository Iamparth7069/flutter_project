import 'dart:io';

void main(){

  double English,Hindi,Maths,Pt,Gujrati;
  print("Enter The marks of English");
  English=double.parse(stdin.readLineSync()!);
  print("Enter The Marks of Hindi");
  Hindi=double.parse(stdin.readLineSync()!);
  print("Enter The Marks of Maths");
  Maths=double.parse(stdin.readLineSync()!);
  print("Enter The Marks of Pt");
  Pt=double.parse(stdin.readLineSync()!);
  print("Enter The Marks of Gujrati");
  Gujrati=double.parse(stdin.readLineSync()!);
  var Sum=English+Hindi+Maths+Pt+Gujrati;
  print("your totle marks/500 is ${Sum}");

}
