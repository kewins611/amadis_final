import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<void> login(String nombre, String matricula) async {
  final response = await http.post(
    Uri.parse('https://uasdapi.ia3x.com/login'),
    body: {'nombre': nombre, 'matricula': matricula},
  );

  if (response.statusCode == 200) {
    // Guardar credenciales localmente y navegar al menú
    // Utiliza SharedPreferences o algún almacenamiento local
  } else {
    // Manejar error
  }
}

class LoginScreen extends StatelessWidget {
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController matriculaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
                controller: nombreController,
                decoration: InputDecoration(labelText: "Nombre")),
            TextField(
                controller: matriculaController,
                decoration: InputDecoration(labelText: "Matrícula")),
            ElevatedButton(
              onPressed: () {
                login(nombreController.text, matriculaController.text);
              },
              child: Text("Entrar"),
            ),
            // Botones para cambiar o resetear la contraseña
          ],
        ),
      ),
    );
  }
}
