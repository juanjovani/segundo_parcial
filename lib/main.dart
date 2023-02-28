import 'package:counter2_app5b/screens/counter_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
