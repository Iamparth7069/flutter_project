import 'dart:io';

void main() {
  stdout.write('Enter the first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter the second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter the third number: ');
  double num3 = double.parse(stdin.readLineSync()!);

  if (num1 > num2) {
    if (num1 > num3) {
      print('The maximum number is $num1');
    } else {
      print('The maximum number is $num3');
    }
  } else {
    if (num2 > num3) {
      print('The maximum number is $num2');
    } else {
      print('The maximum number is $num3');
    }
  }
}