import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);
  void displayDialog(BuildContext context) {
    print('Hola buenas tardes como estan');
    showDialog(
      //para que nos muestre un mensaje cuando le demos al boton
      barrierDismissible: false, //para que solo pueda salir dandole a un boton
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Alerta no hay nada aqui; solo estas perdiendo el tiempo',
          ),
          content: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Aqui es donde va el contenido de la alerta; la cual; no hay nada',
              ),
              SizedBox(height: 20),
              FlutterLogo(size: 100),
            ],
          ),
          actions: [
            //para que el usuario pueda cerrar la ventana
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cierre esta ventana que no sirve para nada'),
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
          //sale un boton en el cual se mostrara una alerta
          onPressed: () {
            displayDialog(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Se mostro una alerta', style: TextStyle(fontSize: 20)),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.wifi_calling_3_sharp),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
