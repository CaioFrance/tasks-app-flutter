import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/widgets/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacity = true;

  void handlerOpacity() {
    setState(() {
      opacity = !opacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacity ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task(
              'Aprender Flutter',
              'https://codelabs.developers.google.com/static/codelabs/flutter-flame-game/img/afb0fd6677c2a621.png?hl=pt-br',
              1,
            ),
            Task(
              'Andar de bike',
              'https://pedaladasaudavel.com.br/wp-content/uploads/2019/01/blog-cicles-jaime-dicas-para-pedalar-a-noite2-e1547063954595-840x480.jpg',
              4,
            ),
            Task(
              'Estudar programação',
              'https://www.valuehost.com.br/blog/wp-content/uploads/2016/10/programming-770x438.jpg.webp',
              3,
            ),
            Task(
              'Estudar Dart',
              'https://dkrn4sk0rn31v.cloudfront.net/uploads/2022/11/ARTIGO-DART-400x280.jpg',
              5,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: handlerOpacity,
        child: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
