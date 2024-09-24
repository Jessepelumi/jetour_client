import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jetour Payment',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Scaffold(),
    );
  }
}