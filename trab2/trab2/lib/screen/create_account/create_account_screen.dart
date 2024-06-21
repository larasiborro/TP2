import 'package:flutter/material.dart';
import 'package:trab2/screen/database_helper.dart'; // Importa o helper para manipulação do banco de dados

/// Tela para criar uma nova conta de utilizador.
/// Esta tela permite ao utilizador inserir um username e password,
/// e ao clicar no botão "Create Account", os dados são armazenados no banco de dados.
class CreateAccountScreen extends StatelessWidget {
  /// Construtor padrão para a tela de criação de conta.
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Controladores para os campos de texto
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Create New Account"), // Título da AppBar.
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // Coluna para dispor os elementos verticalmente.
        child: Column(
          children: [
            // Campo de texto para o nome do utilizador.
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(labelText: "Username"),
            ),
            TextField(
              // Campo de texto para a senha
              controller: passwordController,
              decoration: const InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            // Botão para criar a conta
            ElevatedButton(
              onPressed: () async {
                final String username = usernameController.text;
                final String password = passwordController.text;

                // Verifica se os campos não estão vazios
                if (username.isNotEmpty && password.isNotEmpty) {
                  final user = {
                    'username': username,
                    'password': password,
                  };
                  // Insere o utilizador no banco de dados
                  await DatabaseHelper().insertUser(user);
                  Navigator.pop(context); // Retorna para a tela anterior
                }
              },
              child: const Text("Create Account"), // Texto do botão
            ),
          ],
        ),
      ),
    );
  }
}
