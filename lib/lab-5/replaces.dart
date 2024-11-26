void main() {
  List<String> cities = [
    "Delhi",
    "Mumbai",
    "Bangalore",
    "Hyderabad",
    "Ahmedabad"
  ];

  print("Original List: $cities");

  int index = cities.indexOf("Ahmedabad");
  cities[index] = "Surat";

  print("Modified List: $cities");
}
