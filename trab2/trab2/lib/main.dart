import 'package:flutter/material.dart';
import 'screen/login/log_screen.dart'; // Importa a tela de login

// Função principal que inicia o aplicativo
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginScreen(),
    );
  }
}
