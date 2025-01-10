
import 'package:flutter/material.dart';

class SinglechildviewDemo extends StatelessWidget {
  const SinglechildviewDemo({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(color: Colors.red,height: 400,width: double.maxFinite,),
            Container(color: Colors.green,height: 500,width: double.maxFinite,
              child: ListView.builder(
                itemCount: cities.length,
                itemBuilder: (context, index) {
                return Text(cities[index] , style: TextStyle(fontSize: 100),);
              },),
            ),
            Container(color: Colors.yellow,height: 500,width: double.maxFinite,),
            Container(color: Colors.redAccent,height: 100,width: double.maxFinite,),
            Container(color: Colors.red,height: 100,width: double.maxFinite,),
          ],
        ),
      ),
    );
  }
}
