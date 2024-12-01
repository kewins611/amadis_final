import 'package:flutter/material.dart';
import 'api_service.dart';

class UserInfoScreen extends StatelessWidget {
  final ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Información de Usuario")),
      body: FutureBuilder(
        future: apiService.get('usuario'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final data = snapshot.data;
            return ListView(
              children: [
                ListTile(title: Text("Nombre: ${data['nombre']}")),
                ListTile(title: Text("Matrícula: ${data['matricula']}")),
                // Agrega otros campos según sea necesario
              ],
            );
          }
        },
      ),
    );
  }
}
