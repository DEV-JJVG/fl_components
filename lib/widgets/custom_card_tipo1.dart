import 'package:fl_components/models/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.purple),
            title: Text('Aquí pongo el titulo'),
            subtitle: Text(
              'Pariatur quis adipisicing dolor sunt sit labore incididunt laboris sunt sint duis anim. Incididunt excepteur Lorem minim ad duis do tempor nostrud consequat enim commodo aute dolore. Mollit esse velit aliqua consequat labore nisi sit amet magna. Qui consequat amet tempor incididunt. Excepteur culpa adipisicing et est est aute excepteur esse laborum eu non nisi qui. Adipisicing aute veniam eiusmod eiusmod.',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(foregroundColor: Colors.red),
                  child: Text('cancelar'),
                ),
                TextButton(onPressed: () {}, child: Text('ok')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
