import 'package:flutter/material.dart';
import 'package:listview/builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView"),
          backgroundColor: Colors.teal,
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 50,
              color: Colors.green,
              child: const Center(child: Text('Shibin')),
            ),
            Container(
              height: 50,
              color: Colors.tealAccent,
              child: const Center(child: Text('Asnad')),
            ),
            Container(
              height: 50,
              color: Colors.blue,
              child: const Center(child: Text('Vishnu')),
            ),
            Container(
              height: 50,
              color: Colors.yellowAccent,
              child: const Center(child: Text('Akash')),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SecondMethod(),
                  ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding:
                    const EdgeInsets.all(8.0),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: const Text("SecondMethod"))
          ],
        ));
  }
}
