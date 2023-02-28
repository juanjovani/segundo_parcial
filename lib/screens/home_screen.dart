import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final TextStyle estiloTexto = const TextStyle(
    fontSize: 30,
    color: Color.fromARGB(255, 241, 246, 247),
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    int contador = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador App'),
        centerTitle: true,
        elevation: 10,
        backgroundColor: Color.fromARGB(255, 234, 234, 22),
      ),
      backgroundColor: Color.fromARGB(255, 19, 188, 226),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Numero de taps: ', style: estiloTexto),
            Text(
              '$contador',
              style: estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          contador++;
          print('Tocaste el boton: $contador');
          //
        },
        backgroundColor: const Color.fromARGB(223, 244, 236, 142),
        foregroundColor: Color.fromARGB(0, 231, 64, 9),
        child: const Icon(Icons.add),
      ),
    );
  }
}
