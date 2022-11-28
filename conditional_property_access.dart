class MyClass {
  // member variable
  int? number;

  // constructor
  MyClass(this.number);

  // incrementBy method : increments number by n
  void incrementBy(int n) {
    this.number = this.number! + n;
  }

  // displays value of number
  void printNumber() {
    print('Number is ${this.number}');
  }
}

void main() {
  // myObj?.someProperty
  // the above statement is same as
  // (myObj != null) ? myObj.someProperty : null;

  // initialized as a null variable
  MyClass? myObj = null;

  myObj?.incrementBy(10);

  myObj?.printNumber();

  myObj = MyClass(10);

  myObj.printNumber();

  return;
}
