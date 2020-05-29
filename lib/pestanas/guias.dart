import "package:flutter/material.dart";
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:pr_ipo2/objetos/drawer.dart';
import 'package:pr_ipo2/interfaces/interfazGuias.dart';
import 'package:pr_ipo2/interfaces/AniadirGuia.dart';

//import 'barrabusqueda.dart';

class Guias extends StatefulWidget {
  static const nombreRuta = "/guias";
  @override
  _GuiasState createState() => _GuiasState();
}

class _GuiasState extends State<Guias> {
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
            title: new Text("Guías"),
            backgroundColor: Colors.orange,
          ),
          drawer: new Drawer(child: DrawerVista(3)),
          body: new InterfazGuias(),
          floatingActionButton: SpeedDial(
            tooltip: "Añadir grupo",
            marginBottom: 50,
            marginRight: 30,
            backgroundColor: Colors.orange,
            animatedIcon: AnimatedIcons.add_event,
            //animatedIconTheme: IconThemeData(size: 22.0),
            curve: Curves.easeInOutSine,
            onPress: () {
              Route ruta = new MaterialPageRoute(
                  builder: (context) => new AniadirGuia());
              Navigator.push(context, ruta);
            },
          ),
          //body: Busqueda(),
        ));
  }
}
