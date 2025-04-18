import 'package:flutter/material.dart';
import 'result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '스마타베',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFF7949)),
        useMaterial3: true,
        fontFamily: 'Pretendard JP',
      ),
      home: const ResultScreen(),
    );
  }
}
