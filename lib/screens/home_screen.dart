import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes en Flutter'), elevation: 50.0),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(AppRoutes.menuOptions[index].icon as IconData?),
          title: Text(AppRoutes.menuOptions[index].name),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
          },
        ),

        separatorBuilder: (context, index) => Divider(),
        itemCount: AppRoutes.menuOptions.length,
      ),
    );
  }
}
