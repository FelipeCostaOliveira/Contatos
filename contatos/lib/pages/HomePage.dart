import 'package:flutter/material.dart';
 
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                  Color.fromARGB(255, 0, 4, 255),
                  Color.fromARGB(255, 85, 85, 211),
                  Color.fromARGB(143, 168, 185, 219),
                ],
            ),
          ),
          child:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 180,
                  width: 180,
                  child: Image.asset("assets/Contacts.png"),
                ),
                
                Container(
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/ContatosPage');
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 0, 153, 255)), // Cor de fundo desejada
                        ),
                        child: const Text(
                          'Novo Contato',
                          style: TextStyle(fontSize: 50, color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/ContatosPage');
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 0, 153, 255)), // Cor de fundo desejada
                        ),
                        child: const Text(
                          'Contatos',
                          style: TextStyle(fontSize: 50, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),),
        ));
  }
}