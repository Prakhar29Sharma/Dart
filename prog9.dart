void main() {
  dynamic isTrue = false;
  try {
    print(isTrue++);
  } catch(e) {
    print('Error Occured!');
    rethrow;
  }
}