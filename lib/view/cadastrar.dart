import 'package:flutter/material.dart';

//void main() => runApp(new MyApp());

class Cadastrar extends StatefulWidget {
  @override
  _CadastrarState createState() => _CadastrarState();
}

class _CadastrarState extends State<Cadastrar> {
  List<String> dataList = [];

  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  String titulo, date, participantes;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: new Text('Ata de Reunião '),
          backgroundColor: Colors.deepOrange,
        ),
        body: new SingleChildScrollView(
          child: new Container(
            color: Colors.white,
            margin: new EdgeInsets.all(15.0),
            child: new Form(
              key: _key,
              autovalidate: _validate,
              child: _formUI(),
            ),
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
              labelText: "Título: ",
              labelStyle: TextStyle(color: Colors.black)),
          maxLength: 40,
          validator: _validarTitulo,
          onSaved: (String val) {
            titulo = val;
          },
        ),
        new TextFormField(
            decoration: new InputDecoration(
                labelText: "Data de Emissão:",
                labelStyle: TextStyle(color: Colors.black)),
            keyboardType: TextInputType.datetime,
            maxLength: 8,
            validator: _validarDate,
            onSaved: (String val) {
              date = val;
            }),
        new TextFormField(
            minLines: 1,
            maxLines: 100,
            decoration: InputDecoration(
                labelText: "Participantes",
                labelStyle: TextStyle(color: Colors.black)),
            maxLength: 40,
            validator: _validarParticipantes,
            onSaved: (String val) {
              participantes = val;
            }),

        TextFormField(
          //autofocus: true,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: "Hora de Inicio da Reunião:",
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          style: TextStyle(
            fontSize: 28,
          ),
        ),

        TextFormField(
          //autofocus: true,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: "Hora de Termino da Reunião:",
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          style: TextStyle(
            fontSize: 28,
          ),
        ),

        TextFormField(
          minLines: 1,
          maxLines: 100,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: "Pauta da Reunião:",
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          style: TextStyle(
            fontSize: 28,
          ),
        ),

        TextFormField(
          //autofocus: true,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: "Informe o Setor:",
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          style: TextStyle(
            fontSize: 28,
          ),
        ),

        //height: 20,
        //),
        SizedBox(height: 15.0),
        RaisedButton(
          onPressed: _sendForm,
          child: new Text('Registrar Ata'),
        ),
      ],
    );
  }

  String _validarTitulo(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe o Titulo da Ata";
    } else if (!regExp.hasMatch(value)) {
      return "O nome deve conter caracteres de a-z ou A-Z";
    }
    return null;
  }

  String _validarParticipantes(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe os nomes dos participantes";
    } else if (!regExp.hasMatch(value)) {
      return null;
    }
    return null;
  }

  String _validarDate(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 8) {
      return null;
    } else if (!regExp.hasMatch(value)) {
      return "A data nao deve conter nenhum tipo de caracter. Ex: 12345678";
    }
    return null;
  }

  _sendForm() {
    if (_key.currentState.validate()) {
      _key.currentState.save();
      print("Titulo $titulo");
      print("Data $date");
      print("Participantes $participantes");
    } else {
      setState(() {
        _validate = true;
      });
    }
  }
}
//