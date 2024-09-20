import 'package:flutter/material.dart';

class BirthDayCard extends StatelessWidget {
  const BirthDayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent[100],
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20.0),
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(
                  'data:image/jpeg;base64,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',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Happy Birthday!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                'Wishing you a day filled with love, joy, and all your favorite things!',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[700],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(30),
                    right: Radius.circular(30),
                  ),
                ),
                child: Text(
                  'Celebrate Now!',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
