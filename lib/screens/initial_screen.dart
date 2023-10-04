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
              'assets/images/flutter_mascot.png',
              1,
            ),
            Task(
              'Andar de bike',
              'assets/images/bike.jpeg',
              4,
            ),
            Task(
              'Estudar programação',
              'assets/images/programming.jpg',
              3,
            ),
            Task(
              'Estudar Dart',
              'assets/images/dart_image.jpeg',
              5,
            ),
            SizedBox(height: 80),
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
