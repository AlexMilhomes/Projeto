import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:projeto_caso5/view/AppCell2.dart';

class Cadastrar extends StatefulWidget {
  @override
  _CadastrarState createState() => _CadastrarState();
}

class _CadastrarState extends State<Cadastrar> {
  List<String> dataList = [];
  final _formKey = GlobalKey<FormState>();

  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  String nome, tempo;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: _formKey,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppCell '),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Form(
            key: _key,
            autovalidate: _validate,
            child: _formUI(),
          ),
        ),
      ),
    );
  }

  Widget _formUI() {
    return new Column(
      children: <Widget>[
        new TextFormField(
          decoration: new InputDecoration(
              labelText: "Nome da Operadora: ",
              labelStyle: TextStyle(color: Colors.black)),
          maxLength: 10,
          validator: _validarNome,
          onSaved: (String val) {
            nome = val;
          },
        ),
        SizedBox(height: 25.0),
        DropDownField(
          controller: planosSelected,
          hintText: "Escolha seu plano ",
          enabled: true,
          items: planos,
          onValueChanged: (value) {
            setState(() {
              selectPlanos = value;
            });
          },
        ),
        SizedBox(height: 25.0),
        new TextFormField(
            decoration: InputDecoration(
                labelText: "Tempo de Ligação por (minuto): ",
                labelStyle: TextStyle(color: Colors.black)),
            maxLength: 10,
            keyboardType: TextInputType.number,
            validator: _validarTempo,
            onSaved: (String val) {
              tempo = val;
            }),
        SizedBox(height: 25.0),
        RaisedButton(
          onPressed: () {
            if (_sendForm()) {}
          },
          child: new Text('Calcular'),
        ),
      ],
    );
  }

  String _validarNome(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe o seu Nome";
    } else if (!regExp.hasMatch(value)) {
      return "O nome deve conter caracteres de a-z ou A-Z";
    }
    return null;
  }

  String _validarTempo(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe o tempo de Ligações";
    } else if (!regExp.hasMatch(value)) {
      return null;
    }
    return null;
  }

  bool _sendForm() {
    if (_key.currentState.validate()) {
      _key.currentState.save();
      print("Nome $nome");
      //print("Plano $plano");
      print("Tempo $tempo");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AppCell()),
      );
    } else {
      setState(() {
        return _validate = true;
      });
    }
  }
}

String selectPlanos = "";

final planosSelected = TextEditingController();

List<String> planos = [
  "Pré-Pago",
  "Pós-Pago",
  "Controle",
];
