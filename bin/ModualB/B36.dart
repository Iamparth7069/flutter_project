class print1{
  int? a;
  String? char;

  void printInt(int a){
    this.a = a;
    print("The Values is := $a");
  }
  void printCha(String name1){
    this.char = name1;
    print("print the character =$char");
  }
}
void main(){
  var ob=print1();
  ob.printInt(10);
  ob.printCha("parht");
}

