import 'package:flutter/material.dart';

class RavenclawScreen extends StatelessWidget {
  const RavenclawScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Casa Ravenclaw')),
      body: Center(child: Text('Bienvenido a Ravenclaw')),
    );
  }
}
