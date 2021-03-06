import "package:flutter/material.dart";
import 'package:pr_ipo2/objetos/grupo.dart';
import 'package:toast/toast.dart';
//import 'package:image_picker_modern/image_picker_modern.dart';

class AniadirGrupo extends StatefulWidget {
  //AniadirGrupo();
  @override
  _AniadirGrupoState createState() => _AniadirGrupoState();
}

class _AniadirGrupoState extends State<AniadirGrupo> {
  TextStyle style = TextStyle(fontSize: 20.0);
  TextEditingController idController = TextEditingController();
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
    void _alertGrupoCreado(BuildContext context) {
      AlertDialog dialogo = new AlertDialog(
        content: new Text('Grupo creado correctamente'),
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
      controller: idController,
      obscureText: false,
      style: style,
      validator: (val) => val.isEmpty ? 'Debes introducir un ID' : null,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "ID",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (val) {
        setState(() => _id = val);
      },
    );
    final restriccionesField = TextFormField(
      controller: restriccionesController,
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Restricciones",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (val) {
        setState(() => _restricciones = val);
      },
    );
    final interesesField = TextFormField(
      controller: interesesController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Intereses",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (val) {
        setState(() => _intereses = val);
      },
    );
    final tamanoField = TextFormField(
      controller: tamanoController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Tamaño del grupo",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      validator: (val) => val.isEmpty ? 'Debes introducir un tamaño' : null,
      onChanged: (val) {
        setState(() => _tamano = val as int);
      },
    );
    final idiomaField = TextFormField(
      controller: idiomaController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Idioma",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      validator: (val) => val.isEmpty ? 'Debes introducir un idioma' : null,
      onChanged: (val) {
        setState(() => _idioma = val);
      },
    );

    final crearButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async {
          if (_formKey.currentState.validate()) {
            Grupo grupo = new Grupo(
                _id, _restricciones, _intereses, _tamano, _idioma, _foto);
            _alertGrupoCreado(context);
          }
        },
        child: Text("Crear grupo",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
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
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.orange,
          title: new Text("Nuevo grupo"),
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
                            //padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(width: 2.0, color: Colors.grey),
                                left:
                                    BorderSide(width: 2.0, color: Colors.grey),
                                right:
                                    BorderSide(width: 2.0, color: Colors.grey),
                                bottom:
                                    BorderSide(width: 2.0, color: Colors.grey),
                              ),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Toast.show(
                                    "Seleccion de imagen en implementación",
                                    context,
                                    duration: Toast.LENGTH_LONG,
                                    gravity: Toast.BOTTOM);
                              },
                              child: Image(
                                image: AssetImage("assets/addImage.png"),
                                width: 150,
                                height: 150,
                              ),
                            )),
                        // NOMBRES DATOS
                        new Container(
                            child: new SingleChildScrollView(
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: new Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
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
                                            crearButon,
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
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold)),
              Icon(
                icon,
                size: 35,
                color: Colors.white,
              ),
              Text(
                " : ",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
