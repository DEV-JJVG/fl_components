import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

import 'package:flutter/material.dart';

class CustomTextFormFile extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final bool obscureText;
  const CustomTextFormFile({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.obscureText = false,
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
          decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            helperText: helperText,
            //prefixIcon: const Icon(Icons.verified_user_outlined),
            icon: Icon(icon),
            suffixIcon: Icon(suffixIcon),
          ),
        ),
      ),
    );
  }
}
