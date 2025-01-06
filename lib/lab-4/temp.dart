void main() {
  temp(age: 20, str: "Hello");
  temp(str: "World");

  pos("Hello", 20);
  pos("World", null);
}

void temp({required String str, int? age = 18}) {
  print(str);
  print(age);
}

void pos([String str="w", int? age]) {
  print("$age $str");
}
