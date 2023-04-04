import 'dart:io';

void main() {
  int a, b;

  // take user input for values of a and b
  stdout.write("Enter first number: ");
  a = int.parse(stdin.readLineSync()!);
  stdout.write("Enter second number: ");
  b = int.parse(stdin.readLineSync()! );

  print("Before swapping: a = $a, b = $b");
  a=45;
  b=78;
  // swap values of a and b
  a = a + b;
  b = a - b;
  a = a - b;

  print("After swapping: a = $a, b = $b");
}
