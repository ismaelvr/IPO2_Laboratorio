import "package:flutter/material.dart";
import 'package:pr_ipo2/objetos/grupo.dart';

class ModificarGrupo extends StatefulWidget {
  final Grupo grupo;
  ModificarGrupo(this.grupo);
  @override
  _ModificarGrupoState createState() => _ModificarGrupoState();
}

class _ModificarGrupoState extends State<ModificarGrupo> {
  TextStyle style = TextStyle(fontSize: 20.0);
  TextEditingController idController = TextEditingController(text: "dsd");
  TextEditingController restriccionesController = TextEditingController();
  TextEditingController interesesController = TextEditingController();
  TextEditingController tamanoController = TextEditingController();
  TextEditingController idiomaController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  String _id = "";
  String _restricciones = "";
  String _intereses = "";
  int _tamano = 0;
  String _idioma = "";
  String _foto = "/assets/addImage.png"; //comorl?

  @override
  Widget build(BuildContext context) {
    void _alertGrupoModificado(BuildContext context) {
      AlertDialog dialogo = new AlertDialog(
        content: new Text('Grupo modificado correctamente'),
        actions: <Widget>[
          new FlatButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: new Text("OK")),
        ],
      );
      showDialog(context: context, child: dialogo);
    }

    final idField = TextFormField(
      initialValue: widget.grupo.id,
      //controller: idController,
      style: style,
      validator: (val) => val.isEmpty ? 'Debes introducir un ID' : null,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "ID",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (val) {
        setState(() => _id = val);
      },
    );
    final restriccionesField = TextFormField(
      initialValue: widget.grupo.restricciones,
      //controller: restriccionesController,
      style: style,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Restricciones",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (val) {
        setState(() => _restricciones = val);
      },
    );
    final interesesField = TextFormField(
      initialValue: widget.grupo.intereses,
//controller: interesesController,
      style: style,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Intereses",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (val) {
        setState(() => _intereses = val);
      },
    );
    final tamanoField = TextFormField(
      initialValue: widget.grupo.tamano.toString(),
//controller: tamanoController,
      style: style,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Tamaño del grupo",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      validator: (val) => val.isEmpty ? 'Debes introducir un tamaño' : null,
      onChanged: (val) {
        setState(() => _tamano = val as int);
      },
    );
    final idiomaField = TextFormField(
      initialValue: widget.grupo.idioma,
//controller: idiomaController,
      style: style,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Idioma",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      validator: (val) => val.isEmpty ? 'Debes introducir un idioma' : null,
      onChanged: (val) {
        setState(() => _idioma = val);
      },
    );

    final modificarButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async {
          if (_formKey.currentState.validate()) {
            Grupo grupo = new Grupo(_id, _restricciones, _intereses, _tamano, _idioma, _foto);
            _alertGrupoModificado(context);
          }
        },
        child: Text("Guardar cambios",
            textAlign: TextAlign.center, style: style.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final cancelButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("Cancelar",
            textAlign: TextAlign.center, style: style.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.orange,
          title: new Text("Modificar grupo"),
        ),
        body: new Container(
            padding: const EdgeInsets.only(top: 6.0),
            child: SingleChildScrollView(
              child: new Card(
                child: Container(
                    padding: const EdgeInsets.all(10),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        // FOTO
                        new Container(
                            margin: const EdgeInsets.fromLTRB(70, 0, 70, 0),
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(width: 2.0, color: Colors.grey),
                                left: BorderSide(width: 2.0, color: Colors.grey),
                                right: BorderSide(width: 2.0, color: Colors.grey),
                                bottom: BorderSide(width: 2.0, color: Colors.grey),
                              ),
                            ),
                            child: Image(
                              image: AssetImage(widget.grupo.foto),
                              width: 150,
                              height: 150,
                            )),
                        // NOMBRES DATOS
                        new Container(
                            child: new SingleChildScrollView(
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: new Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                                  Form(
                                    key: _formKey,
                                    child: Column(
                                      children: <Widget>[
                                        SizedBox(height: 15.0),
                                        idField,
                                        SizedBox(height: 15.0),
                                        restriccionesField,
                                        SizedBox(height: 15.0),
                                        interesesField,
                                        SizedBox(height: 15.0),
                                        tamanoField,
                                        SizedBox(height: 15.0),
                                        idiomaField,
                                        SizedBox(height: 15.0),
                                        modificarButon,
                                        SizedBox(height: 15.0),
                                        cancelButon
                                      ],
                                    ),
                                  ),
                                ]))),
                      ],
                    )),
              ),
            )));
  }

  Row nuevaFila(String nombre, IconData icon, String texto) {
    return Row(
      children: <Widget>[
        new Container(
          decoration: BoxDecoration(color: Colors.blue),
          child: Row(
            children: <Widget>[
              Text("  " + nombre + " ",
                  style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)),
              Icon(
                icon,
                size: 35,
                color: Colors.white,
              ),
              Text(
                " : ",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Text(
          "  " + texto,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
