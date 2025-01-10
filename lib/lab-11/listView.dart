import 'package:flutter/material.dart';

class ListDemo extends StatelessWidget {
  const ListDemo({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> cities = [
        "Ahmedabad",
        "Surat",
        "Vadodara",
        "Rajkot",
        "Bhavnagar",
        "Jamnagar",
        "Junagadh",
        "Gandhinagar",
        "Anand",
        "Nadiad",
        "Morbi",
        "Mehsana",
        "Navsari",
        "Vapi",
        "Bharuch",
        "Palanpur",
        "Porbandar",
        "Godhra",
        "Dahod",
        "Valsad"
    ];

    return Scaffold(
      appBar: AppBar(title: Text("City list"),),
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (context, index) {
          return Card(child: ListTile(title:  Text(cities[index])));
        },
      ),
      // body: ListView(
      //   children: cities.map((city){
      //      return Card(child: ListTile(title:  Text(city)));
      //   }).toList(),
      // ),
    );
  }
}
