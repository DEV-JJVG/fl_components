import 'dart:math';

import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({Key? key}) : super(key: key);
  @override
  State<ContainerScreen> createState() => _ContainerSreenState();
}

class _ContainerSreenState extends State<ContainerScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadiusGeometry.circular(20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dynamic Container')),
      body: Center(
        child: Container(
          width: _height,
          height: _width,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_circle_fill_rounded),

        onPressed: () {
          _width = Random().nextInt(300).toDouble() + 50;
          _height = Random().nextInt(300).toDouble() + 50;
          _color = Colors.yellow;
          _borderRadius = BorderRadiusGeometry.circular(30);
          setState(() {});
        },
      ),
    );
  }
}
