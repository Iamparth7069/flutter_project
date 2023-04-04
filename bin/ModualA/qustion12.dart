import 'dart:io';
void main() {
  int n,
      i,
      flag = 0;
  print("Enter the Number to check Prime or Not Price");
  var a = int.parse(stdin.readLineSync()!);
  if (a == 0 || a == 1) {
    flag = 1;
  }
  for (i = 2; i < a / 2; i++) {
    if (a % i == 0) {
      flag = 1;
      break;
    }
  }
  if (flag == 0) {
    print("$a is a Prime Numbe");
  }
  else {
    print("$a is Not a Prime Number");
  }
}