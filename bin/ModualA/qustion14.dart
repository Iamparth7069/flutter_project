void main() {
  int a = 10, b = 20, c = 30;

  int max = (a > b) ? ((a > c) ? a : c) : ((b > c) ? b : c);
  print('Maximum number among $a, $b and $c is $max.');
}

