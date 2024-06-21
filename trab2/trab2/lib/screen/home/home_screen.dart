import 'package:flutter/material.dart';
import 'package:trab2/screen/quiz/quiz_screen.dart'; //importa a tela do quiz

// Classe HomeScreen que define a tela inicial de seleção de nível
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

// Função para navegar até a tela do quiz, passando o nível selecionado
  void _navigateToQuiz(BuildContext context, int level) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => QuizScreen(
          level: level), // Passa o nível selecionado para o QuizScreen
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select the level'),
        backgroundColor:
            Colors.purple, // Altere a cor do AppBar para combinar com o fundo
      ),
      body: Container(
        color: Colors.white, // Define o fundo branco
        child: Center(
          child: Column(
            // Alinha os widgets centralizados na vertical
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                // Botão para selecionar o nível fácil
                onPressed: () => _navigateToQuiz(context, 1), // Nível 1
                style: ElevatedButton.styleFrom(
                  minimumSize:
                      const Size(200, 60), // Aumenta o tamanho do botão
                  backgroundColor: Colors.purple, // Cor do botão
                ),
                child: const Text(
                  'Easy',
                  style: TextStyle(
                      fontSize: 18, color: Colors.white), // Cor do texto branco
                ),
              ),
              const SizedBox(height: 10), // Espaçamento entre os botões
              ElevatedButton(
                // Botão para selecionar o nível médio
                onPressed: () => _navigateToQuiz(context, 2), // Nível 2
                style: ElevatedButton.styleFrom(
                  minimumSize:
                      const Size(200, 60), // Aumenta o tamanho do botão
                  backgroundColor: Colors.purple, // Cor do botão
                ),
                child: const Text(
                  'Medium',
                  style: TextStyle(
                      fontSize: 18, color: Colors.white), // Cor do texto branco
                ),
              ),
              const SizedBox(height: 10), // Espaçamento entre os botões
              ElevatedButton(
                // Botão para selecionar o nível difícil
                onPressed: () => _navigateToQuiz(context, 3), // Nível 3
                style: ElevatedButton.styleFrom(
                  minimumSize:
                      const Size(200, 60), // Aumenta o tamanho do botão
                  backgroundColor: Colors.purple, // Cor do botão
                ),
                child: const Text(
                  'Hard',
                  style: TextStyle(
                      fontSize: 18, color: Colors.white), // Cor do texto branco
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
