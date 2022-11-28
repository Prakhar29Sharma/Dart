import 'dart:io';
import 'dart:math';

void main() {

  List<int> myList = [1, 2, 3];

  int n = 0;
  while (n < 3) {
    print(myList[n]);
    n++;
  }

  for (int j = 0; j < myList.length; j++) {
    print(myList[j]);
  }

  List<String> friends = ["Dhruuv", "Abhay", "Swaroop", "Nigel", "Yashas"];
  print("My Friends List : ");
  int i = 0;
  int len = friends.length;

  while(i < len){
    stdout.write("${friends[i].toUpperCase()} ");
    i++;
  }

}

