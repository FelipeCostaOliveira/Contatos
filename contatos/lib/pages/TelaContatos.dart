import 'package:flutter/material.dart';

class ContatosPage extends StatelessWidget {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController telefoneController = TextEditingController();

  bool areFieldsEmpty() {
    return emailController.text.isEmpty ||
        nomeController.text.isEmpty ||
        telefoneController.text.isEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Adicionar Contato"),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 400,
              width: 400,
              child: Image.asset("assets/lista.png")
            ),
            
            TextField(
              controller: nomeController,
              decoration: InputDecoration(labelText: 'Nome'),
            ),
            SizedBox(height: 1.0),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: telefoneController,
              decoration: InputDecoration(labelText: 'Telefone'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (!areFieldsEmpty()) {
                  // Adicione a lógica para salvar o contato aqui
                  // Você pode acessar os valores digitados nos controladores
                  String nome = nomeController.text;
                  String email = emailController.text;
                  String telefone = telefoneController.text;

                  // Implemente a lógica para salvar o contato
                }
              },
              child: Text('Adicionar Contato'),
            ),
          ],
        ),
      ),
    );
  }
}
