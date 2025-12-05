import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Sirve para crear una lista de imágenes y el media qiuery quita los padding para el notch
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return FadeInImage(
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage('https://picsum.photos/500/600?image=$index'),
            );
          },
        ),
      ),
    );
  }
}
