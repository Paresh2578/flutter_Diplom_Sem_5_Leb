void main() {
  List<int> list1 = [4, 9, 5];
  List<int> list2 = [9, 4, 9, 8, 4];

  List<int> ans = [];

  for (int i = 0; i < list1.length; i++) {
    if (list2.contains(list1[i])) {
      ans.add(list1[i]);
    }
  }
  print(ans);
}
