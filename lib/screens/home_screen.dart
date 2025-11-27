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
          leading: Icon(AppRoutes.MenuOptions[index].icon as IconData?),
          title: Text(AppRoutes.MenuOptions[index].name),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.MenuOptions[index].route);
          },
        ),

        separatorBuilder: (context, index) => Divider(),
        itemCount: AppRoutes.MenuOptions.length,
      ),
    );
  }
}
