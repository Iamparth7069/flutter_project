class Parent{
  void showParent(){
    print("This is a Parent CLass");
  }
}

class Child extends Parent{
  void showChild(){
    print("This is Child Class");
  }
}

void main(){

  var p1 = Parent();
  p1.showParent();

  var c1 = Child();
  c1.showChild();

  var c2 = Child();
  c2.showParent();
}