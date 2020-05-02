import "package:flutter/material.dart";
import 'package:pr_ipo2/objetos/drawer.dart';
import 'package:pr_ipo2/interfaces/interfazRutasRealizadas.dart';


class RutasRealizadas extends StatefulWidget {
  static const nombreRuta = "/rutasrealizadas";
  @override
  _RutasRealizadasState createState() => _RutasRealizadasState();
}

class _RutasRealizadasState extends State<RutasRealizadas> {

  void _ayuda(BuildContext context) {
    AlertDialog dialogo = new AlertDialog(
      content: new Text('AYUDA: Comprate un perro'),
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
    return new Scaffold(
      appBar: new AppBar(
        actions: [
        IconButton(icon: Icon(Icons.search),
        onPressed: () {_buscar(context);},
        ),
        IconButton(icon: Icon(Icons.help),
        onPressed: () {_ayuda(context);},
        )],
        title: new Text("Rutas Realizadas"),
        backgroundColor: Colors.orange,
      ),
      drawer: new Drawer(child: DrawerVista()),
      body: new InterfazRutasRealizadas(),
      
    );
  }
}
