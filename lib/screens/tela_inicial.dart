import 'package:flutter/material.dart';

import '../components/tarefa.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tarefas',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: const [
            Tarefa('Aprender Flutter', 'assets/images/dash.png', 4),
            Tarefa('Andar de bike', 'assets/images/bike.webp', 1),
            Tarefa('Meditar', 'assets/images/meditar.jpeg', 3),
            Tarefa('Aprender jogar', 'assets/images/jogar.jpg', 5),
            Tarefa('Aprender Git', 'assets/images/livro.jpg', 3),
            SizedBox(
              height: 75,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
