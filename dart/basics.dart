// starting point of dart
void main() {
  // printing in console
  print("hello world");

  // variables
  // dart is static typed language

  String name = "ahsan";
  int value = 123;
  bool flag = true;
  dynamic temp = 122;
  print(name);
  print(value);
  print(flag);
  print(temp);

  //functions

  print(sum(1, 2));

  //list

  List array = [1, 2, 3, 4, 5];
  array.remove(1);
  print(array);
}

int sum(int a, int b) {
  return a + b;
}
