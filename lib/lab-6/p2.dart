import 'package:flutter/material.dart';

class P2 extends StatelessWidget {
  const P2({super.key});

  @override
  Widget build(BuildContext context) {
    // diclare  TextEditingController
    final TextEditingController controller = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: const Text('TextField Example'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: controller,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    print("text is ${controller.text}");
                  },
                  child: const Text('Print Input'),
                ),
              ],
            )));
  }
}
