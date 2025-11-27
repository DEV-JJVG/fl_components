import 'package:fl_components/widgets/custom_text_form_file.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forms: Inputs")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: [
            CustomTextFormFile(
              hintText: 'Nombre y apellidos',
              labelText: 'Nombre y apellidos',
              helperText: 'Solo letras',
              icon: Icons.assignment_ind_outlined,
              suffixIcon: Icons.supervised_user_circle_outlined,
            ),
            SizedBox(height: 25),
            CustomTextFormFile(
              hintText: 'Apellidos',
              labelText: 'Apellidos',
              icon: Icons.supervised_user_circle_rounded,
            ),
            CustomTextFormFile(
              hintText: 'E-mail',
              labelText: 'E-mail de registro',
              icon: Icons.email_rounded,
            ),
          ],
        ),
      ),
    );
  }
}
