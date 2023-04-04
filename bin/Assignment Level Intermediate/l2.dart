import 'dart:math';

abstract class Shape {
  double rectangleArea(double length, double breadth);
  double squareArea(double side);
  double circleArea(double radius);
}

class Area implements Shape {
  @override
  double rectangleArea(double length, double breadth) {
    double area = length * breadth;
    print("Area of Rectangle: $area");
    return area;
  }

  @override
  double squareArea(double side) {
    double area = side * side;
    print("Area of Square: $area");
    return area;
  }
  @override
  double circleArea(double radius) {
    double area = pi * radius * radius;
    print("Area of Circle: $area");
    return area;
  }
}

void main() {
  Area area = Area();
  area.rectangleArea(5.0, 4.0);
  area.squareArea(6.0);
  area.circleArea(3.0);
}