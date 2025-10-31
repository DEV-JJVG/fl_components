import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes en Flutter'), elevation: 50.0),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.mark_as_unread),
          title: Text('Nombre de ruta'),
          onTap: () {
            final routeName = MaterialPageRoute(
              builder: (context) => Listview1Screen(),
            );
            ;
            Navigator.pushNamed(context, 'card');
          },
        ),

        separatorBuilder: (context, index) => Divider(),
        itemCount: 5,
      ),
    );
  }
}
