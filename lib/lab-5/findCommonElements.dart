import 'dart:io';

List<int> findCommonElements(List<int> list1, List<int> list2) {
  List<int> commonElements = [];

  for (int element in list1) {
    if (list2.contains(element) && !commonElements.contains(element)) {
      commonElements.add(element);
    }
  }

  return commonElements;
}

void main() {
  print("Enter the number of elements for the first list:");
  int n1 = int.parse(stdin.readLineSync()!);
  List<int> list1 = [];

  print("Enter $n1 elements for the first list:");
  for (int i = 0; i < n1; i++) {
    int number = int.parse(stdin.readLineSync()!);
    list1.add(number);
  }

  // Input for the second list
  print("Enter the number of elements for the second list:");
  int n2 = int.parse(stdin.readLineSync()!);
  List<int> list2 = [];

  print("Enter $n2 elements for the second list:");
  for (int i = 0; i < n2; i++) {
    int number = int.parse(stdin.readLineSync()!);
    list2.add(number);
  }

  // Find common elements
  List<int> common = findCommonElements(list1, list2);

  // Display the common elements
  if (common.isEmpty) {
    print("No common elements between the two lists.");
  } else {
    print("Common elements between the two lists: $common");
  }
}
