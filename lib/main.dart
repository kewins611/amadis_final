import 'package:flutter/material.dart';
import 'login.dart';
import 'menu_screen.dart';
import 'user_info.dart';
//import 'news_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/menu': (context) => MenuScreen(),
        '/userInfo': (context) => UserInfoScreen(),
       // '/news': (context) => NewsScreen(),
        // Agrega todas las demás rutas aquí
      },
    );
  }
}
