import 'package:flutter/material.dart';
import 'package:projeto_caso5/view/cadastrar.dart';
import 'package:projeto_caso5/view/login.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
//import 'package:my_app/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:projeto_caso5/Page/login.dart';
//import 'package:projeto_caso5/View/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ata De Reunião',
      theme: ThemeData(accentColor: Colors.white70),
      home: LoginPage(),
    );
  }
}
