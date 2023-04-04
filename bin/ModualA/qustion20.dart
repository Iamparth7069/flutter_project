void main(){
  int result=1;
  // int a=0;
  // for(int j=0;j<=10;j++){
  //   print("Number ${j}");
  // }
  // int a=51 ;
  // while(a<60){
  //   print("The Number is ${a}");
  //   a++;
  //
  // }
  // int a=100;
  // do{
  //     if(a<81){
  //       break;
  //     }
  //     print("The Number is $a");
  //     a--;
  // }while(true);
  // int fact=5;
  // for(int i=0;i<f;i++){
  //   fact += i*fact;
  // }
  // print(fact);

  int factorial(int n) {
    if (n == 0) {
      return 1;
    } else {
      return n * factorial(n-1);
    }
  }
  print(factorial(5));
}