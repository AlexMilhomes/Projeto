import 'package:flutter/material.dart';
import 'package:projeto_caso5/view/cadastrar.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cadastrar(),
    );
  }
}
