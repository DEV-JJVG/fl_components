import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //con esto lo que hago es ver si el formulario esta validado; y si no esta validado que no continue
    final myFormKey = GlobalKey<FormState>();

    //cuando le damos al onpress saldra esta lista
    final Map<String, String> formValue = {
      'nombre': 'tony',
      'apellidos': 'stark',
      'email': 'tonyStark@gmail.com',
      'password': '12345',
      'role': 'Ironman',
    };
    return Scaffold(
      appBar: AppBar(title: Text("Salir del input")),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              //hacemos un colum para tener varios hijos anidados; el text form field es un
              //input que es mas facil de manejar; mas moderno
              CustomTextFormField(
                hintText: "Nombre",
                labelText: "Nombre",
                helperText: "Solo letras",
                icon: Icons.assignment_returned_sharp,
                suffixIcon: Icons.zoom_in_map_outlined,
                formProperty: 'nombre',
                formValue: formValue,
              ),
              SizedBox(height: 24),
              CustomTextFormField(
                hintText: "Apellidos",
                labelText: "Apellidos",
                icon: Icons.assignment_returned_sharp,
                formProperty: 'apellidos',
                formValue: formValue,
              ),
              SizedBox(height: 24),
              CustomTextFormField(
                hintText: "E-Mail",
                labelText: "E-Mail",
                keyboardType: TextInputType.emailAddress,
                icon: Icons.assignment_returned_sharp,
                formProperty: 'email',
                formValue: formValue,
              ),
              SizedBox(height: 24),
              CustomTextFormField(
                hintText: "Contraseña",
                labelText: "Contraseña del correo",
                keyboardType: TextInputType.visiblePassword,
                icon: Icons.password_rounded,
                formProperty: 'password',
                formValue: formValue,
                obscureText: true,
              ),
              SizedBox(height: 24),
              DropdownButtonFormField(
                //con esto hacemos una lista
                items: [
                  DropdownMenuItem(child: Text("Usuario"), value: 'usuario'),
                  DropdownMenuItem(
                    child: Text("Administrador"),
                    value: 'admin',
                  ),
                  DropdownMenuItem(child: Text("Superheroe"), value: 'heroe'),
                  DropdownMenuItem(
                    child: Text("Millonario"),
                    value: 'milloneti',
                  ),
                ],
                onChanged: (value) {
                  formValue["role"] =
                      value ??
                      "usuario"; //con esto y con la lista le metemos el rol y le decimos que por defecto
                  //sea usuario para que no pete la app
                },
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(
                    FocusNode(),
                  ); //con esto ocualtamos el teclado cuando le demos a enviar
                  if (!myFormKey.currentState!.validate()) {
                    //esto es un boleano; que nos devolvera si el formulario es valido o no valudo
                    print("Formulario no valido");
                    return;
                  }
                  //si es valido nos devuelve el form value
                  print(formValue);
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Center(child: Text("Enviar formulario")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
