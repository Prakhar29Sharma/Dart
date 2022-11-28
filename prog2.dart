import 'dart:io';



void main() {
  // code here

  // lazily initialized variable
  // variable declared as late may cause runtime error if its value is not initialized before use
  
  late String desc;

  bool test = false;
  
  int i = 0;

  while(i < 2) {

    if(test) {
      print(desc);
    } else {
      print("No desc");
      desc = "Hi, This is desc";
      test = true;
    }
    i++;
  }
}