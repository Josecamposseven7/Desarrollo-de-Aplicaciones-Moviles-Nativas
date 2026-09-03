import 'package:flutter/material.dart';

void main() {
  runApp(const MiAppFlutter());
}

class MiAppFlutter extends StatelessWidget {
  const MiAppFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hola Mundo Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Versión 3: Flutter'),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Hola Mundo',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Jose Emmanuel Campos Hurtado',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                'Boleta: 2024630902',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                'Grupo: 7CV4',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}