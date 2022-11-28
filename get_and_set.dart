class myClass {
  int _aProperty = 0;

  // returning value of property by using get keyword
  int get aProperty => _aProperty;

  // setting value of property by using set keyword
  set aProperty(int n) {
    _aProperty = n;
  }
}

void main() {
  // creating object
  myClass obj = myClass();
  // setting value of property
  obj.aProperty = 4;
  // printing value of property
  print(obj.aProperty);
}
