import 'package:fl_components/routes/listview_routes.dart';
import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListView Main',
      initialRoute: ListviewRoutes.initialRoute,
      routes: ListviewRoutes.getAppRoutes(),
      onGenerateRoute: ListviewRoutes.onGenerateRoute,
    );
  }
}
