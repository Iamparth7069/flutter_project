void factorial(int n){
  int fact = 1;
  for(int i=1;i<=n;i++){
    fact = fact * i;
  }
  print("Factorial is $fact");
}
void main(){
  int n = 5;
  factorial(n);
}