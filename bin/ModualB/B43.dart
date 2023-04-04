abstract class Parent{
  void mesege();
}
class firstClass extends Parent{
  @override
  void mesege() {
    print("This is The First Sub Class");
  }
}
class secondClass extends Parent{
  @override
  void mesege() {
    print("This is The Second Class");
  }
}
void main(){
  var first = firstClass();
  first.mesege();
  var second = secondClass();
  second.mesege();
}