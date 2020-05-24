import "package:flutter/material.dart";
import 'package:pr_ipo2/interfaces/interfazGrupos.dart';
import 'package:pr_ipo2/objetos/drawer.dart';

class Grupos extends StatefulWidget {
  static const nombreRuta = "/grupos";
  @override
  _GruposState createState() => _GruposState();
}

class _GruposState extends State<Grupos> {
  void _ayuda(BuildContext context) {
    AlertDialog dialogo = new AlertDialog(
      content: new Text('AYUDA: En implementación'),
      actions: <Widget>[
        new FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: new Text("OK")),
      ],
    );
    showDialog(context: context, child: dialogo);
  }

  void _buscar(BuildContext context) {
    AlertDialog dialogo = new AlertDialog(
      content: new Text('Ventana en Implementación'),
      actions: <Widget>[
        new FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: new Text("OK")),
      ],
    );
    showDialog(context: context, child: dialogo);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: new AppBar(
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  _buscar(context);
                },
              ),
              IconButton(
                icon: Icon(Icons.help),
                onPressed: () {
                  _ayuda(context);
                },
              )
            ],
            title: new Text("Grupos"),
            backgroundColor: Colors.orange,
          ),
          drawer: new Drawer(child: DrawerVista()),
          body: new InterfazGrupos(),
          //body: Busqueda(),
        ));
  }
}
