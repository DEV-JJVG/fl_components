import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  void displayDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("¡Alerta!"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Aqui va el contenido de la alerta"),
              SizedBox(height: 20),
              FlutterLogo(size: 100),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Cerrar"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Mostrar alerta"),
          onPressed: () => displayDialog(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
