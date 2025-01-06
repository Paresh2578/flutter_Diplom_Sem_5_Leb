import 'package:flutter/material.dart';

class ListDemo extends StatefulWidget {
  @override
  State<ListDemo> createState() => _ListDemoState();
}

class _ListDemoState extends State<ListDemo> {
  List<Map<String, dynamic>> list = [];

  TextEditingController controller = TextEditingController();

  String std = "10";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
      body: Column(
        children: [
          // add -section
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton(
                value:  std,
                  items: [
                    DropdownMenuItem(
                      child: Text("10 st"),
                      value: "10",
                    ),
                    DropdownMenuItem(
                      child: Text("11 st"),
                      value: "11",
                    ),
                    DropdownMenuItem(
                      child: Text("12 st"),
                      value: "12",
                    )
                  ],
                  onChanged: (value) {
                    std = value.toString();
                    setState(() {});
                  }),
              SizedBox(width: 20,),
              Container(
                width: 200,
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder()
                  ),
                ),
              ),
              SizedBox(width: 20,),
              IconButton(onPressed: (){
                list.add({"std" : std , "text":controller.text });
                controller.text = "";
                setState(() {

                });
              }, icon: Icon(Icons.add))
            ],
          ),


          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context,index){
                Map<String,dynamic> data = list[index];
                return Card(
                  child: ListTile(
                    title: Text(data["text"]),
                    leading: Text(data["std"]),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
