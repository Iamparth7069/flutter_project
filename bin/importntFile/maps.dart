import 'dart:io';
import 'dart:math';
void main(){
  var maps = <int , String>{1 : "parth" , 2 : "Geeta" , 3 : "RajeshBhai"};
  int? ch;
  do{
    print("Press 1 To add The Maps");
    print("Press 2 Enter The Key To check The Values");
    print("Press 3 Print all Values");
    print("Press 4 Print all Keys");
    print("Press 5 all Key and Values Show ");
    print("Press 6 To remove ");
    print("Press 7 Contains Key");
    print("Press 8 Update");
    print("Press 9 Exit");
    print("Avalable Maps ");
    maps.entries.forEach((element) {
      print("The Keys is ${element.key} The Values is ${element.value}");
    });
    ch=int.parse(stdin.readLineSync()!);
    switch (ch){
      case 1:
        Random random = new Random();
        int randomnumber = random.nextInt(200);
        print('Emter the Values TO add Maps  ');
        String values = stdin.readLineSync()!;
        maps[randomnumber] = values;
        break;
      case 2:
        print("Enter the Keys To check The Values");
        int key = int.parse(stdin.readLineSync()!);
        print(maps[key]);
        break;
      case 3:
        for(var values in maps.values){
          print("The values ${values}");
        }
        break;
      case 4:
        for(var keys in maps.keys){
          print("The all Keys In Maps $keys");
        }
        break;
      case 5:
        for(var entry in maps.entries){
          print("Key is : ${entry.key} Values is : ${entry.value}");
        }
        break;
      case 6:
        print("Remove The Values Enter the Key To remove ");
        int remove=int.parse(stdin.readLineSync()!);
        maps.remove(remove);
        break;
      case 7:
        print("The Enter to the Key ");
        int con = int.parse(stdin.readLineSync()!);
        if(maps.containsKey(con)==true){
          print("True");
        }else{
          print("false");
        }
        break;
      case 8:
        print("Enter the Key To Update");
        int key = int.parse(stdin.readLineSync()!);
        print("Enter the Values To Update");
        String values=stdin.readLineSync()!;
        if(maps.isNotEmpty){
          maps.update(key, (value) => values);
        }
        print("print the Maps");
        maps.entries.forEach((element) {
          print('key : ${element.key}   value : ${element.value}');
        });
        break;
      case 9:
        print("Thanks For Using The Values");
        exit(0);
        break;
    }
  }while(ch <= 9);
}