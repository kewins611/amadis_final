import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resetear Contraseña')),
      body: const Center(child: Text('Pantalla para Resetear la Contraseña')),
    );
  }
}
