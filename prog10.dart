Future<String> fetchUserOrder(int u_id) {
  // Imagine that this function is fetching user info from another service or database.
  if (u_id == 101) {
    return Future.delayed(Duration(seconds: 1), () => "masala tea");
  }

  return Future.delayed(Duration(seconds: 1), () => "large latte");
}

Future<int> fetchUserID() {
  return Future.delayed(
      Duration(seconds: 1), () => throw Exception("User doesn't Exist!"));
}

Future<void> createOrderMessage(String order) {
  return Future.delayed(
      Duration(seconds: 1), () => print("your order is ${order}!"));
}

void main() async {

  try {
    createOrderMessage(await fetchUserOrder(await fetchUserID()));
  } catch (err) {
    print("$err");
  }
  
  print('Fetching user order...');
}
