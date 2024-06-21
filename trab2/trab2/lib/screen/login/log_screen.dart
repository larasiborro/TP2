import 'package:flutter/material.dart';
import 'log_widget.dart'; // Importa os widgets personalizados para o login
import 'package:trab2/screen/home/home_screen.dart'; // Importa a tela principal (HomeScreen) para navegação após o login

// Define um widget com estado para a tela de login
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

// Classe de estado para o widget LoginScreen
class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController; // Controlador de animação

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      // Inicializa o controlador de animação com uma duração de 2 segundos
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animationController!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      }
    });
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra do aplicativo com título
      appBar: AppBar(
        title: const Text("Computer Networks"),
      ),
      body: SizedBox.expand(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.jpg"),
                  fit: BoxFit.cover)),
          child: ListView(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  const Column(
                    children: [
                      SizedBox(
                        height: 150,
                      ),
                      LoginForm(), // Formulário de login
                      SignUpButton(), // Botão de fazer login
                    ],
                  ),
                  StaggerAnimation(controller: _animationController!)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
