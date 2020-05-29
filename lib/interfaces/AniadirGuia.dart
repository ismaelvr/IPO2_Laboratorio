import "package:flutter/material.dart";
import 'package:pr_ipo2/objetos/rutasProximas.dart';
import 'package:pr_ipo2/pestanas/proximasrutas.dart';
import 'package:toast/toast.dart';
//import 'package:image_picker_modern/image_picker_modern.dart';

class AniadirGuia extends StatefulWidget {
  //AniadirRutaProxima();
  @override
  _AniadirGuiaState createState() => _AniadirGuiaState();
}

class _AniadirGuiaState extends State<AniadirGuia> {
  TextStyle style = TextStyle(fontSize: 20.0);
  TextEditingController nombreController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController correoController = TextEditingController();
  TextEditingController sueldoController = TextEditingController();
  TextEditingController valoracionController = TextEditingController();
  TextEditingController descripcionController = TextEditingController();
  TextEditingController idiomasController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  String _nombre = "";
  String _id = "";
  String _correo = "";
  int _sueldo = 0;
  double _valoracion = 0.0;
  String _descripcion = "";
  String _idiomas = "";
  String _foto = "/assets/addImage.png"; //comorl?

  @override
  Widget build(BuildContext context) {
    void _alertGuiaCreada(BuildContext context) {
      AlertDialog dialogo = new AlertDialog(
        content: new Text('Guia creado correctamente'),
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

    final nombreField = TextFormField(
      controller: nombreController,
      obscureText: false,
      style: style,
      validator: (val) => val.isEmpty ? 'Debes introducir un nombre' : null,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Nombre del guía",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (val) {
        setState(() => _id = val);
      },
    );
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
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (val) {
        setState(() => _id = val);
      },
    );
    final descripcionField = TextFormField(
      minLines: 1,
      maxLines: 5,
      controller: descripcionController,
      obscureText: false,
      style: style,
      validator: (val) => val.isEmpty ? 'Debes introducir una descripción' : null,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Descripción",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (val) {
        setState(() => _id = val);
      },
    );
    final correoField = TextFormField(
      controller: correoController,
      obscureText: false,
      style: style,
      validator: (val) => val.isEmpty ? 'Debes introducir un correo' : null,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Correo",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (val) {
        setState(() => _id = val);
      },
    );
    final sueldoField = TextFormField(
      controller: sueldoController,
      obscureText: false,
      style: style,
      validator: (val) => val.isEmpty ? 'Debes introducir un sueldo' : null,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Sueldo",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (val) {
        setState(() => _id = val);
      },
    );
    final valoracionField = TextFormField(
      controller: valoracionController,
      style: style,
      validator: (val) => val.isEmpty ? 'Debes introducir una valoración' : null,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Valoración",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (val) {
        setState(() => _valoracion = val as double);
      },
    );
    final idiomasField = TextFormField(
      controller: idiomasController,
      obscureText: false,
      style: style,
      validator: (val) => val.isEmpty ? 'Debes introducir los idiomas' : null,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Idiomas",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (val) {
        setState(() => _idiomas = val);
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
            /*  ProximasRutas RutaProxima = new ProximasRutas(
                _id, _restricciones, _intereses, _tamano, _idioma, _foto);*/
            _alertGuiaCreada(context);
          }
        },
        child: Text("Crear guía",
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
          title: new Text("Nuevo guía"),
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
                                left: BorderSide(width: 2.0, color: Colors.grey),
                                right: BorderSide(width: 2.0, color: Colors.grey),
                                bottom: BorderSide(width: 2.0, color: Colors.grey),
                              ),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Toast.show("Seleccion de imagen en implementación", context,
                                    duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
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
                                child: new Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                                  Form(
                                    key: _formKey,
                                    child: Column(
                                      children: <Widget>[
                                        SizedBox(height: 15.0),
                                        nombreField,
                                        SizedBox(height: 15.0),
                                        idField,
                                        SizedBox(height: 15.0),
                                        descripcionField,
                                        SizedBox(height: 15.0),
                                        correoField,
                                        SizedBox(height: 15.0),
                                        sueldoField,
                                        SizedBox(height: 15.0),
                                        valoracionField,
                                        SizedBox(height: 15.0),
                                        idiomasField,
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
