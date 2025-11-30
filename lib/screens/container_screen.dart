import 'package:flutter/material.dart';
import 'dart:math';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  final random = Random();
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dynamic Container')),
      body: Center(
        child: Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_circle_fill_rounded),

        onPressed: () {
          //con esto hago que cuando le de al boton se cambie a esa altura
          //_width = 200;
          //_height = 200;
          //altura aleatoria; tamaño aleatorio; color aleatorio y border aleatorio
          _width = random.nextInt(200).toDouble() + 77;
          _height = random.nextInt(200).toDouble() + 77;
          _borderRadius = BorderRadius.circular((random.nextInt(200) + 77));
          _color = Color.fromRGBO(
            Random().nextInt(500) + 77,
            Random().nextInt(500) + 77,
            Random().nextInt(500) + 77,
            Random().nextInt(500).toDouble() + 77,
          );
          setState(() {});
        },
      ),
    );
  }
}
