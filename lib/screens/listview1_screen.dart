import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['Targaryen', 'Stark', 'Lannister', 'Baratheon'];
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Tipo 1"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          ...options
              .map(
                (e) => ListTile(
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                  title: Text(e),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
