import 'dart:io';
void main(){
  int ch;
  String a;
  String remove;
  String update;
  String search;
  var numlist = <String>[];
  do{
    print("Press 1 To Add ");
    print("Press 2 to remove");
    print("Press 3 To update");
    print("Press 4 to Display ");
    print("Press 5 To reverse ");
    print("Press 6 To Start With ");
    print("Press 7 to Exit");
    ch = int.parse(stdin.readLineSync()!);
    switch(ch){
      case 1:
        print("Enter the Element");
        a=stdin.readLineSync()!;
        numlist.add(a);
        break;
      case 2:
        print("Enter the Remove Number");
        remove = stdin.readLineSync()!;
        numlist.remove(remove);
        break;
      case 3:
        print("Enter the Corrent position Sting Update Element");
        update = stdin.readLineSync()!;
        print("How to Enter the List ");
        String update1 = stdin.readLineSync()!;
        numlist[numlist.indexOf(update)]= update1;
        break;
      case 4:
        print("Display the Element");
        numlist.forEach((element) {
          print(element);
        });
        break;
      case 5 :
        print("Reverse The List ");
        numlist.reversed;
        break;
      case 6:
        print("Enter the Element To Search  The List");
        search = stdin.readLineSync()!;
        var a = numlist.where((element) => element.contains(search));
        print(a);
        break;
      case 7:
        print("Thanks for Using App ");
        exit(0);
    }
  }while(ch < 8);
}