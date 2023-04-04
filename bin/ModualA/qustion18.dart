import 'dart:io';

void main() {
  double num1, num2, result;
  var choice;

  while (true) {
    print('Select an operation:');
    print('1. Addition');
    print('2. Subtraction');
    print('3. Multiplication');
    print('4. Division');
    print('5. Exit');
    stdout.write('Enter your choice (1-5): ');
    choice = int.parse(stdin.readLineSync()!);

    if (choice == 5) {
      print('Exiting program...');
      break;
    }

    stdout.write('Enter two numbers: ');
    num1 = double.parse(stdin.readLineSync()!);
    num2 = double.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        result = num1 + num2;
        print('$num1 + $num2 = $result');
        break;
      case 2:
        result = num1 - num2;
        print('$num1 - $num2 = $result');
        break;
      case 3:
        result = num1 * num2;
        print('$num1 * $num2 = $result');
        break;
      case 4:
        if (num2 == 0) {
          print('Error: Division by zero');
        } else {
          result = num1 / num2;
          print('$num1 / $num2 = $result');
        }
        break;
      default:
        print('Invalid choice');
    }
    print('\n');
  }
}