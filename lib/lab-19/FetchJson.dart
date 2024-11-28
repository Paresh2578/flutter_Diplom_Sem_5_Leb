import 'dart:convert';
import 'package:flutter/material.dart';

class FetchJsonApp extends StatefulWidget {
  @override
  _FetchJsonAppState createState() => _FetchJsonAppState();
}

class _FetchJsonAppState extends State<FetchJsonApp> {
  List<dynamic> jsonData = [];

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  Future<void> loadJsonData() async {
    // Load the JSON file from assets
    final String response =
        await DefaultAssetBundle.of(context).loadString('assets/data.json');
    final data = json.decode(response);
    print(data);
    setState(() {
      jsonData = data; // Assuming the JSON contains an "items" array
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch JSON Example'),
      ),
      body: jsonData.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: jsonData.length,
              itemBuilder: (context, index) {
                final item = jsonData[index];
                return ListTile(
                  title: Text(item['name']),
                  subtitle: Text('Email: ${item['email']}'),
                );
              },
            ),
    );
  }
}
