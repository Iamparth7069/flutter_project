import 'dart:math';
class Triangle {
  double a = 3;
  double b = 4;
  double c = 5;

  double perimeter() {
    return a + b + c;
  }

  double area() {
    double s = perimeter() / 2;
    return sqrt(s * (s - a) * (s - b) * (s - c));
  }
}

void main() {
  Triangle triangle = new Triangle();
  print("Perimeter of triangle = ${triangle.perimeter()}");
  print("Area of triangle = ${triangle.area()}");
}
