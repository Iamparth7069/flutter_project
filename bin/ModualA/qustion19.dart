import 'dart:io';
import 'dart:math';

void main() {
  int choice;
  double area;
  stdout.write("Enter your choice: \n1. Triangle\n2. Rectangle\n3. Circle\n");
  choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    double base, height;
    stdout.write("Enter the base of the triangle: ");
    base = double.parse(stdin.readLineSync()!);
    stdout.write("Enter the height of the triangle: ");
    height = double.parse(stdin.readLineSync()!);
    area = 0.5 * base * height;
    print("Area of the triangle is $area");
  }
  else if (choice == 2) {
    double length, width;
    stdout.write("Enter the length of the rectangle: ");
    length = double.parse(stdin.readLineSync()!);
    stdout.write("Enter the width of the rectangle: ");
    width = double.parse(stdin.readLineSync()!);
    area = length * width;
    print("Area of the rectangle is $area");
  }
  else if (choice == 3) {
    double radius;
    stdout.write("Enter the radius of the circle: ");
    radius = double.parse(stdin.readLineSync()!);
    area = pi * pow(radius, 2);
    print("Area of the circle is $area");
  }
  else {
    print("Invalid choice");
  }
}