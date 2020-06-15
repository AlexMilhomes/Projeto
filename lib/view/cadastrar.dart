
import 'package:flutter/material.dart';

//void main() => runApp(new MyApp());

class Cadastrar extends StatefulWidget {
  @override
  _CadastrarState createState() => _CadastrarState();
}

class _CadastrarState extends State<Cadastrar> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  String titulo, date, participantes;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Ata de Reunião'),
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
          decoration: new InputDecoration(hintText: 'Título'),
          maxLength: 40,
          validator: _validarTitulo,
          onSaved: (String val) {
            titulo = val;
          },
        ),
        new TextFormField(
            decoration: new InputDecoration(hintText: 'Data de Emissão'),
            keyboardType: TextInputType.datetime,
            maxLength: 8,
            validator: _validarDate,
            onSaved: (String val) {
              date = val;
            }),
        new TextFormField(
            minLines: 1,
            maxLines: 100,
            decoration: new InputDecoration(hintText: 'Participantes'),
            maxLength: 40,
            validator: _validarParticipantes,
            onSaved: (String val) {
              participantes = val;
            }),
      
            
        //SizedBox(
          //width: 200,
          //height: 100,
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
          //height: 20,
        //),
        new SizedBox(height: 15.0),
        new RaisedButton(
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

  // String _validarData(String value) {
  //   String patttern = r'(^[0-9]*$)';
  //   RegExp regExp = new RegExp(patttern);
  //   if (value.length == 0) {
  //     return "Informe a Data";
  //   } else if(value.length != 7){
  //     return "O celular deve ter 10 dígitos";
  //   }else if (!regExp.hasMatch(value)) {
  //     return "O número do celular so deve conter dígitos";
  //   }
  //   return null;
  // }

  // String _validarEmail(String value) {
  //   String pattern =
  //       r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  //   RegExp regExp = new RegExp(pattern);
  //   if (value.length == 0) {
  //     return "Informe o Email";
  //   } else if (!regExp.hasMatch(value)) {
  //     return "Email inválido";
  //   } else {
  //     return null;
  //   }
  // }

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
// import 'package:flutter/material.dart';

// class CadastrarAta extends StatelessWidget {
//   const CadastrarAta({Key key}) : super(key: key);

//   //@override
//   //_ResultadoPageState creatState() => _ResultadoPageState();

//   @override
//   Widget build(BuildContext context) {
//      return Scaffold(
//       body: Container(
//           padding: EdgeInsets.only(top: 10, left: 40, right: 0),
//           color: Colors.white,
//           child: ListView(
//              children: <Widget>[
//     // var listView = ListView.builder(
//     //         itemCount: dataList.length,
//     //         itemBuilder: (_, int index){
//     //           return Text(dataList[index]);
//     //         },
//               SizedBox(
//                 height: 20,
//               ),
//               TextFormField(
//                 //autofocus: true,
//                 keyboardType: TextInputType.text,
//                 decoration: InputDecoration(
//                   labelText: "Título:",
//                   labelStyle: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20,
//                   ),
//                 ),
//                 style: TextStyle(
//                   fontSize: 28,
//                 ),
//               ),
//               SizedBox(
//                 height: 18,
//               ),
//               TextFormField(
//                 //autofocus: true,
//                 keyboardType: TextInputType.datetime,
//                 decoration: InputDecoration(
//                   labelText: "Data da Emissão:",
//                   labelStyle: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20,
//                   ),
//                 ),
//                 style: TextStyle(
//                   fontSize: 28,
//                 ),
//               ),
//               SizedBox(
//                 height: 18,
//               ),
//               TextFormField(
//                 //autofocus: true,
//                 keyboardType: TextInputType.text,
//                 decoration: InputDecoration(
//                   labelText: "Participantes:",
//                   labelStyle: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20,
//                   ),
//                 ),
//                 style: TextStyle(
//                   fontSize: 28,
//                 ),
//               ),
//               SizedBox(
//                 height: 18,
//               ),
//               TextFormField(
//                 //autofocus: true,
//                 keyboardType: TextInputType.datetime,
//                 decoration: InputDecoration(
//                   labelText: "Hora Inicio:",
//                   labelStyle: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20,
//                   ),
//                 ),
//                 style: TextStyle(
//                   fontSize: 28,
//                 ),
//               ),
//               SizedBox(
//                 height: 18,
//               ),

//                   RaisedButton(
//   onPressed: () {
//     var _formKey;
//         if (_formKey.currentState.validate()) {
//       Scaffold
//           .of(context)
//           .showSnackBar(SnackBar(content: Text('Dados processados com sucesso')));
//     }
//   },
//   child: Text('Registrar Ata'),
// )
//             //    RaisedButton(
//             //   child: Text("Registrar"),
//             //   onPressed: (){
//             //     var controller;
//             //     Navigator.of(context).pop(controller.text);
//             //   },
//             // ),

//             ]
//           )));

//   }

// }
