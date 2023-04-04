import 'dart:io';

class Complex {
  double? real;
  double? imag;

  Complex(double real, double imag) {
    this.real = real;
    this.imag = imag;
  }

  Complex add(Complex other) {
    return Complex(real! + other.real!, imag! + other.imag!);
  }

  Complex sub(Complex other) {
    return Complex(real! - other.real!, imag! - other.imag!);
  }

  Complex mul(Complex other) {
    return Complex(real! * other.real! - imag! * other.imag!,real! * other.imag! + imag! * other.real!);
  }
}

void main() {
  double real1, imag1, real2, imag2;


  print("Enter real part of first complex number:");
  real1 = double.parse(stdin.readLineSync()!);
  print("Enter imaginary part of first complex number:");
  imag1 = double.parse(stdin.readLineSync()!);


  print("Enter real part of second complex number:");
  real2 = double.parse(stdin.readLineSync()!);
  print("Enter imaginary part of second complex number:");
  imag2 = double.parse(stdin.readLineSync()!);

  Complex c1 = Complex(real1, imag1);
  Complex c2 = Complex(real2, imag2);

  Complex sum = c1.add(c2);
  Complex diff = c1.sub(c2);
  Complex prod = c1.mul(c2);

  print("Sum = ${sum.real} + ${sum.imag}i");
  print("Difference = ${diff.real} + ${diff.imag}i");
  print("Product = ${prod.real} + ${prod.imag}i");
}