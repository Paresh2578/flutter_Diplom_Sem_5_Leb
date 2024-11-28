import 'package:flutter/material.dart';

class CountryStateCityDropdown extends StatefulWidget {
  @override
  _CountryStateCityDropdownState createState() =>
      _CountryStateCityDropdownState();
}

class _CountryStateCityDropdownState extends State<CountryStateCityDropdown> {
  // Data for country, states, and cities
  final Map<String, List<String>> countryStateMap = {
    'USA': ['California', 'Texas', 'Florida'],
    'India': ['Maharashtra', 'Delhi', 'Karnataka'],
    'Canada': ['Ontario', 'Quebec', 'British Columbia'],
  };

  final Map<String, List<String>> stateCityMap = {
    'California': ['Los Angeles', 'San Francisco', 'San Diego'],
    'Texas': ['Houston', 'Dallas', 'Austin'],
    'Florida': ['Miami', 'Orlando', 'Tampa'],
    'Maharashtra': ['Mumbai', 'Pune', 'Nagpur'],
    'Delhi': ['New Delhi', 'Dwarka', 'Noida'],
    'Karnataka': ['Bangalore', 'Mysore', 'Mangalore'],
    'Ontario': ['Toronto', 'Ottawa', 'Hamilton'],
    'Quebec': ['Montreal', 'Quebec City', 'Laval'],
    'British Columbia': ['Vancouver', 'Victoria', 'Kelowna'],
  };

  String? selectedCountry;
  String? selectedState;
  String? selectedCity;

  List<String> states = [];
  List<String> cities = [];

  // Update states when a country is selected
  void updateStates(String country) {
    setState(() {
      selectedCountry = country;
      states = countryStateMap[country] ?? [];
      selectedState = null;
      cities = [];
      selectedCity = null;
    });
  }

  // Update cities when a state is selected
  void updateCities(String state) {
    setState(() {
      selectedState = state;
      cities = stateCityMap[state] ?? [];
      selectedCity = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Country-State-City Dropdown'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Country Dropdown
            DropdownButton<String>(
              isExpanded: true,
              value: selectedCountry,
              hint: Text('Select Country'),
              items: countryStateMap.keys.map((country) {
                return DropdownMenuItem<String>(
                  value: country,
                  child: Text(country),
                );
              }).toList(),
              onChanged: (value) {
                if (value != null) updateStates(value);
              },
            ),
            SizedBox(height: 16),
            // State Dropdown
            DropdownButton<String>(
              isExpanded: true,
              value: selectedState,
              hint: Text('Select State'),
              items: states.map((state) {
                return DropdownMenuItem<String>(
                  value: state,
                  child: Text(state),
                );
              }).toList(),
              onChanged: (value) {
                if (value != null) updateCities(value);
              },
            ),
            SizedBox(height: 16),
            // City Dropdown
            DropdownButton<String>(
              isExpanded: true,
              value: selectedCity,
              hint: Text('Select City'),
              items: cities.map((city) {
                return DropdownMenuItem<String>(
                  value: city,
                  child: Text(city),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCity = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
