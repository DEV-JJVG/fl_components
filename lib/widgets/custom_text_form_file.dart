import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValue;

  const CustomTextFormField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValue,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true, //con esto directamente se selecciona el input
      // initialValue: "Viva España",//le doy un valor inicial
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText:
          obscureText, //con esto cuando pongo un espacio la palabra que ponga sera en mayuscula
      onChanged: (value) => formValue[formProperty] =
          value, //de esta forma vamos a ir metiendo el valor en el formValue
      validator: (value) {
        //le decimos un minimo que tenga tener
        if (value!.length < 5) {
          return "Minimo 5 caracteres";
        }
      },
      autovalidateMode:
          AutovalidateMode.onUserInteraction, //con esto mostramos el mensaje
      decoration: InputDecoration(
        //le vamos a dar style al input
        hintText: hintText, //con esto es un texto visible pero no parpable
        labelText: labelText, //con esto nos sale arriba lo que estamos poniendo
        helperText:
            helperText, //es una ayuda para decirle al usuario que tiene que poner
        suffixIcon: Icon(
          icon,
        ), //le ponemos un icono; que es este caso se pone a la derecha
        //prefixIcon: Icon(Icons.verified_user_rounded)//con este le ponemos el icono a la izquierda
        icon: Icon(
          suffixIcon,
        ), //con este se pone a la izquierda y no se mete a la zona de escritura
        border: OutlineInputBorder(
          //le ponemos bordes al input
        ),
      ),
    );
  }
}
