class Tarefas{
  String titulo;
  DateTime data;
  String participantes;

  Tarefas(this.titulo, this.data, this.participantes);

  Map<String,dynamic> toMap(){

    var map = <String, dynamic>{
      'titulo': titulo,
      'data': data,
      'participantes': participantes  
    };
    return map;
  }
Tarefas.fromMap(Map<String, dynamic> map){
       titulo =map['titulo'];
       data = map['data'];
       participantes = map['participantes'];  
}

@override
  String toString(){
    return "Contato => (titulo: $titulo, data: $data, participantes: $participantes)";
  }
}