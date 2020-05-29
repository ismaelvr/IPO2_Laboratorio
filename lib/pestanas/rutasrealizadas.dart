import "package:flutter/material.dart";
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
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
            title: new Text("Rutas Realizadas"),
            backgroundColor: Colors.orange,
          ),
          drawer: new Drawer(child: DrawerVista(1)),
          body: new InterfazRutasRealizadas(),
          /*floatingActionButton: SpeedDial(
            tooltip: "Añadir grupo",
            marginBottom: 50,
            marginRight: 30,
            backgroundColor: Colors.orange,
            animatedIcon: AnimatedIcons.add_event,
            //animatedIconTheme: IconThemeData(size: 22.0),
            curve: Curves.easeInOutSine,
            onPress: () {
              /*Route ruta = new MaterialPageRoute(
                  builder: (context) => new AniadirRutaRealizadas());
              Navigator.push(context, ruta);*/
              //no hay que añadir rutas REALIZADAS no?
            },
          ),*/
        ));
  }
}
