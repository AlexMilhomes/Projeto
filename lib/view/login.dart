import 'package:flutter/material.dart';
import 'package:projeto_caso5/main.dart';
import 'package:projeto_caso5/view/cadastrar.dart';
//import 'package:projeto_caso5/Page/Widget.dart';
//import 'package:projeto_caso5/Page/cadastrar.dart';
//import 'package:projeto_caso5/Page/cadastrar.dart';

class LoginInicio extends StatefulWidget {
  @override
  _LoginInicio createState() => _LoginInicio();
}

class _LoginInicio extends State<LoginInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.number,
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                    labelText: "CPF",
                    labelStyle: TextStyle(color: Colors.black38, fontWeight: FontWeight.w400, fontSize: 20)),
              ),
              Divider(),
              TextFormField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.white)),
              ),
              Divider(),
              ButtonTheme(
                height: 60.0,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cadastrar()
                              //dataList.add(result);
                              ));
                    },
                    child: Text(
                      "Entrar",
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
