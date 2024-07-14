import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
   String? email;
   String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: 'Correo electrónico'),
              validator: (value) {
               if (value!.isEmpty)  {
                  return 'Por favor ingresa tu correo';
                }
              
                return null;
              },
              onSaved: (value) => email = value,
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Contraseña'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Por favor ingresa tu contraseña';
                }
                // Puedes agregar más validaciones aquí (por ejemplo, longitud mínima).
                return null;
              },
              onSaved: (value) => password = value,
            ),
          ],
        ),
      ),
    
   /* FlatButton(onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) =>
                RegistroPage()));
              },
              child:const Text('Registrarse'),
            ) */
    );
  }
}
