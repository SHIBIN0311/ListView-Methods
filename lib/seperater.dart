import 'package:flutter/material.dart';

class ThirdMethod extends StatelessWidget {
  ThirdMethod({super.key});
  final List<String> items = List.generate(50, (index) => 'Item $index');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Seperater"),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(items[index]),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Colors.teal,
                    );
                  },
                  itemCount: items.length)),
        ],
      ),
    );
  }
}
