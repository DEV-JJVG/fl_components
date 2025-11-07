import 'package:fl_components/routes/listview_routes.dart';
import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['Griffindor', 'Ravenclaw', 'Slitherin', 'Hufflepuff'];
  const Listview1Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView Tipo 1")),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.home_max_outlined),
          title: Text(ListviewRoutes.menuOptions[index + 1].name),
          onTap: () {
            Navigator.pushNamed(
              context,
              ListviewRoutes.menuOptions[index + 1].route,
            );
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: ListviewRoutes.menuOptions.length - 1,
      ),
    );
  }
}
