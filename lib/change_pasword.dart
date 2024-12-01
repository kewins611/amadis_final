import 'package:flutter/material.dart';
import 'api_service.dart';

class ChangePasswordScreen extends StatelessWidget {
  final ApiService apiService = ApiService();
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cambiar Contraseña")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: oldPasswordController,
              decoration: InputDecoration(labelText: "Contraseña Antigua"),
            ),
            TextField(
              controller: newPasswordController,
              decoration: InputDecoration(labelText: "Nueva Contraseña"),
            ),
            ElevatedButton(
              onPressed: () async {
                await apiService.post('cambiar_contraseña', {
                  'oldPassword': oldPasswordController.text,
                  'newPassword': newPasswordController.text,
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Contraseña cambiada exitosamente")),
                );
              },
              child: Text("Cambiar Contraseña"),
            ),
          ],
        ),
      ),
    );
  }
}
