import 'package:flutter/material.dart';

class CustomTextFormFile extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  const CustomTextFormFile({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextFormField(
          autofocus: true,
          initialValue: 'David Bisbal',
          textCapitalization: TextCapitalization.words,
          onChanged: (value) {
            print('valor: $value');
          },
          validator: (value) {
            if (value!.length < 5) {
              return 'Minimo 5 caracteres';
            }
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: const InputDecoration(
            hintText: 'Nombre y apellidos',
            labelText: 'Nombre y apellidos',
            helperText: 'Solo letras',
            prefixIcon: Icon(Icons.verified_user_outlined),
            icon: Icon(Icons.assignment_ind_rounded),
            suffixIcon: Icon(Icons.supervised_user_circle),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
