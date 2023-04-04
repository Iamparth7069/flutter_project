import 'dart:io';
void main(){
    print("Presses Is Start");
    getnumber();
    print("The Process is Over ");
}
Future <void> getnumber() async{
  print("Enter the String ");
  String name=stdin.readLineSync()!;
  print("Enter the Second String ");
  String secoond = stdin.readLineSync()!;
  var st=await concateTheString(name, secoond);
  print(st);
}

Future concateTheString(String n1,String n2) {
  var result=Future.delayed(Duration(seconds: 5),(){
    print("The String 1 is ${n1} Second is ${n2}");
    print("The Concate the string ${n1+n2}");
    return "Answer is hear";
  });
  return result;
}
