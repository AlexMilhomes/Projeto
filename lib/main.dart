import 'package:flutter/material.dart';
//import 'package:projeto_caso5/Page/login.dart';
import 'package:projeto_caso5/View/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Projeto',
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: LoginInicio());
        
        
  }
}

// class Tela1 extends StatelessWidget {
// @override
//  Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Projeto',
//         theme: ThemeData(primarySwatch: Colors.deepPurple),
//         home: MyWidget());
        
//   }
// }

// @override
//  Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Projeto',
//         theme: ThemeData(primarySwatch: Colors.deepPurple),
//         home: ScreenTwo());
        
//   }


// class CadastrarPage extends StatefulWidget {
//   const CadastrarPage({ Key key }) : super(key: key);

//   @override
//   _CadastrarPageState createState() => _CadastrarPageState();
// }

// class CadastrarAta extends StatefulWidget {
//   @override
//   _CadastrarAta createState() => _CadastrarAta();
// }

// class _CadastrarAta extends State<CadastrarAta> {
//   TextEditingController controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//           child: Column(
//         children: <Widget>[
//           TextField(controller: controller),
         
//         ],
//       )),
//     );
//   }
// }





