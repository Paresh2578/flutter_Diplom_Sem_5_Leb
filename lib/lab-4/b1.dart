// void main() {
//   List<String> names = ["Alice", "Bob", "Bob"];
//   List<int> heights = [155, 185, 150];
//   // Output: ["Mary","Emma","John"]
//
//   // Sort the hight in descending order
//   List<int> tempHeights = heights.toList();
//   tempHeights.sort((a, b) => b.compareTo(a));
//
//   print(heights);
//   print(tempHeights);
//
//   List<String> tempNames = names.toList();
//
//   for (int i = 0; i < tempHeights.length; i++) {
//     int index = heights.indexOf(tempHeights[i]);
//
//     tempNames[i] = names[index];
//   }
//   print(tempNames);
// }

void main() {
  List<String> names = ["Alice", "Bob", "Bob"];
  List<int> heights = [155, 185, 150];

  // Use a single list to sort both heights and names together
  List<MapEntry<String, int>> combined = [
    for (int i = 0; i < names.length; i++) MapEntry(names[i], heights[i])
  ];

  // Sort combined list by height in descending order
  combined.sort((a, b) => b.value.compareTo(a.value));

  // Reflect the sorted order back into the original lists
  for (int i = 0; i < combined.length; i++) {
    names[i] = combined[i].key;
    heights[i] = combined[i].value;
  }

  print(names);
  print(heights);
}
