import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menú Principal")),
      body: ListView(
        children: [
          ListTile(
            title: Text("Información de Usuario"),
            onTap: () => Navigator.pushNamed(context, '/userInfo'),
          ),
          ListTile(
            title: Text("Noticias"),
            onTap: () => Navigator.pushNamed(context, '/news'),
          ),
          ListTile(
            title: Text("Eventos"),
            onTap: () => Navigator.pushNamed(context, '/events'),
          ),
          // Continúa con las demás pantallas...
        ],
      ),
    );
  }
}
