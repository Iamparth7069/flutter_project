class Square{
  var s;

  Square(this.s);

  void area(){
    print("Area of Square : ${s*s} ");
  }
}

class Rectangle{
  var length;
  var breadth;


  Rectangle(this.length, this.breadth);

  void area(){
    print("Area of Rectangle : ${length*breadth}");
  }
}

void main(){
  var s1 = Square(3);
  s1.area();

  var t1 = Rectangle(3, 5);
  t1.area();
}