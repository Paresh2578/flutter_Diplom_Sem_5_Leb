import 'package:flutter/material.dart';

import 'LAB-9/p9_2.dart';
import 'lab-10/p10.1.dart';
import 'lab-10/p3.3/10.2.1.dart';
import 'lab-10/p3.3/10.2.2.dart';
import 'lab-11/p11.1.dart';
import 'lab-11/p11.2.dart';
import 'lab-11/p11.3.dart';
import 'lab-12/p12.1.dart';
import 'lab-13/p13.1.dart';
import 'lab-9/p9_1.dart';
import 'lab-9/p9_3.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AddUser(),
    );
  }
}
