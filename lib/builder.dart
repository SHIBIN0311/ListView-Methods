import 'package:flutter/material.dart';
import 'package:listview/seperater.dart';

class SecondMethod extends StatelessWidget {
  SecondMethod({super.key});
  final List<String> items = List.generate(50, (index) => 'Item $index');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Builder"),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index]),
                );
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>  ThirdMethod(),
                ));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding:
                      const EdgeInsets.all(8.0),
                  textStyle: const TextStyle(fontSize: 18),
                ),
              child: const Text("Third Method"))
        ],
      ),
    );
  }
}
