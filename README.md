# TP2

# Jogo sobre Endereçamento IPv4 (em Flutter).

Este projeto é um jogo educativo desenvolvido em Flutter, focado em ajudar os jogadores a explorarem e aprenderem mais sobre conceitos de Redes de Computadores, especificamente o endereçamento IPv4. O jogo gera perguntas automaticamente sobre Network ID, Broadcast, e verificação de endereços IPv4 no mesmo segmento de rede. As perguntas são classificadas em três níveis de dificuldade (Easy, Medium e Difícil), e o score de cada jogador é armazenado em uma base de dados SQLite.

# Estrutura do Projeto

O projeto é composto pelas seguintes pastas e arquivos principais:

- `lib/`
  - `main.dart`: Arquivo principal que inicia a aplicação.
  - `screen/`
    - `login/`
      - `log_screen.dart`: Tela de login do utilizador.
      - `log_widget.dart`: Widgets utilizados na tela de login.
    - `home/`
      - `home_screen.dart`: Tela inicial onde o jogador escolhe o nível de dificuldade
    - `quiz/`
      - `quiz_screen.dart`: Tela do quiz onde as perguntas são exibidas.
    - `create_account.dart`: Tela para criação de novas contas de utilizador.

# Funcionalidades:

# Tela de Login

- Arquivo: `log_screen.dart`
- Descrição: A tela de login permite ao utilizador inserir seu nome de utilizador e senha para entrar no jogo.
- Navegação: Caso o login seja bem-sucedido, o utilizador é redirecionado para a tela inicial (`HomeScreen`).

# Tela de Criação de Conta

- Arquivo: `create_account.dart`
- Descrição: Permite ao utilizador criar uma nova conta inserindo nome de utilizador e senha.
- Navegação: Após a criação da conta, o utilizador é redirecionado para a tela de login.

# Tela Inicial

- Arquivo: `home_screen.dart`
- Descrição: Permite ao utilizador selecionar o nível de dificuldade do quiz (Fácil, Médio ou Difícil).
- Navegação: Redireciona o utilizador para a tela do quiz (`QuizScreen`) com o nível de dificuldade selecionado.

# Tela do Quiz

- Arquivo: `quiz_screen.dart`
- Descrição: Exibe perguntas sobre endereçamento IPv4 de acordo com o nível de dificuldade selecionado.
- Pontuação: Calcula a pontuação do utilizador com base nas respostas corretas e erradas.
- Feedback: Fornece feedback imediato sobre as respostas.

# Banco de Dados SQLite

- Arquivo: `database_helper.dart`
- Descrição: Gere as operações de banco de dados, incluindo a criação de tabelas, inserção de dados e consultas.

