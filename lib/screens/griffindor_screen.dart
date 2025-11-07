import 'package:flutter/material.dart';

class GriffindorScreen extends StatelessWidget {
  const GriffindorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Casa Griffindor')),
      body: const Column(children: [Text('Bienvenido a Griffindor')]),
    );
  }
}
