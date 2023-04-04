import 'dart:io';
void main() {
  var totalMarks = 0;
  double percentage = 0.0;

  stdout.write('Enter the marks for 5 subjects: ');

  for (var i = 0; i < 5; i++) {
    stdout.write('Subject ${i + 1}: ');
    var marks = int.parse(stdin.readLineSync()!);
    totalMarks += marks;
  }

  percentage = totalMarks / 5.0;

  print('Total Marks: $totalMarks');
  print('Percentage: $percentage');

  if (percentage > 75) {
    print('Distinction');
  } else if (percentage > 60 && percentage <= 75) {
    print('First class');
  } else if (percentage > 50 && percentage <= 60) {
    print('Second class');
  } else if (percentage > 35 && percentage <= 50) {
    print('Pass class');
  } else {
    print('Fail');
  }
}