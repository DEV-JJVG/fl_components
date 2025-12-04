import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: [
            ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return FadeInImage(
                  placeholder: const AssetImage("assets/jar-loading.gif"),
                  image: NetworkImage(
                    "https://picsum.photos/500/600?image=$index",
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
