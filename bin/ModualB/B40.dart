class Rectangle{
  var length;
  var breadth;

  void shoeArea(){
    print("Area = ${length * breadth}");
  }

  void showPerimeter(){
    print("Perimeter = ${2*(length+breadth)}");
  }
}

class Square extends Rectangle{
  var S;
  void showSquare(){
    print("Square = ${S * S}");
  }
}

void main()
{
  print("Area of Rectangle :");
  var area1 = Rectangle();
  area1.breadth = 4;
  area1.length = 5;
  area1.shoeArea();

  print("Perimeter of Rectangle : ");
  var p1 = Rectangle();
  p1.breadth = 5;
  p1.length = 5;
  p1.showPerimeter();

  print("Square of given Number : ");
  var s1 = Square();
  s1.S = 5;
  s1.showSquare();
}