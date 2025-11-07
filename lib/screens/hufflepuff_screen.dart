import 'package:flutter/material.dart';

class HufflepuffScreen extends StatelessWidget {
  const HufflepuffScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Casa Hufflepuff')),
      body: const Center(child: Text('Bienvenido a Hufflepuff')),
    );
  }
}
