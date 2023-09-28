// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<int> count = [];

  void _incrementCounter() {
    setState(() {
      _counter++;
      count.add(_counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: count.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text(count[index].toString()),
            trailing: IconButton(
              onPressed: () {
                
                setState(() {
                  count.remove(_counter);
                print(count);
                });
              },
              icon: const Icon(Icons.delete),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
