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
      backgroundColor: Colors.white,
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
                style: new TextStyle(color: Colors.deepOrange, fontSize: 20),
                decoration: InputDecoration(
                    labelText: "CPF: ",
                    labelStyle: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w400,
                        fontSize: 20)),
              ),
              Divider(),
              TextFormField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.deepOrange, fontSize: 20),
                decoration: InputDecoration(
                    labelText: "SENHA: ",
                    labelStyle: TextStyle(
                        color: Colors.deepPurple, fontWeight: FontWeight.w400)),
              ),
              Divider(),
              ButtonTheme(
                height: 60.0,
                //alignment: Alignment.centerLeft,
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
