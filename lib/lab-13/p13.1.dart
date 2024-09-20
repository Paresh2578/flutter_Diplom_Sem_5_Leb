import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../lab-12/p12.1.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  TextEditingController NameController = TextEditingController();
  TextEditingController DOBController = TextEditingController();
  TextEditingController CityController = TextEditingController();
  TextEditingController AddressController = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Add Users"),
      ),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if(value!.isEmpty){
                    return "Please Enter Name";
                  }
                },
                controller: NameController,
                decoration: InputDecoration(
                    labelText: "Enter Name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if(value!.isEmpty){
                    return "Enter Date Of Birth";
                  }
                },
                controller: DOBController,
                decoration: InputDecoration(
                    labelText: "Date Of Birth"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if(value!.isEmpty){
                    return "Please Enter City";
                  }
                },
                controller: CityController,
                decoration: InputDecoration(
                    labelText: "City Name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if(value!.isEmpty){
                    return "Please Enter Address";
                  }
                },
                controller: AddressController,
                decoration: InputDecoration(
                    labelText: "Address"),
              ),
            ),
            ElevatedButton(onPressed: () {
              if(!_formkey.currentState!.validate()){
                return;
              }
              add_user().then((value) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Row(
                      children: [
                        Icon(Icons.info),
                        SizedBox(width: 8),
                        Text("Successfully save user data"),
                      ],
                    ),
                  ),
                );

              },);
            }, child: Text("Save"))
          ],
        ),
      ),
    );
  }
  Future<void> add_user() async {
    Map<String,dynamic> user = Map();
    user["name"] = NameController.text;
    user["DOB"] = DOBController.text;
    user["City"] = CityController.text;
    user["Address"] = AddressController.text;
    await http.post(Uri.parse('https://64e2cdb1bac46e480e77c3e.mockapi.io/faculties'),body: user,headers: {
      "Content-Type":"application/x-www-form-urlencoded"
    });
  }
}
