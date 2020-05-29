import "package:flutter/material.dart";
import 'package:pr_ipo2/interfaces/AniadirGrupo.dart';
import 'package:pr_ipo2/interfaces/interfazGrupos.dart';
import 'package:pr_ipo2/objetos/drawer.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

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
                tooltip: "Buscar",
                icon: Icon(Icons.search),
                onPressed: () {
                  _buscar(context);
                },
              ),
              IconButton(
                tooltip: "Ayuda",
                icon: Icon(Icons.help),
                onPressed: () {
                  _ayuda(context);
                },
              )
            ],
            title: new Text("Grupos"),
            backgroundColor: Colors.orange,
          ),
          drawer: new Drawer(child: DrawerVista(4)),
          body: new InterfazGrupos(),

          // FLOATING ACTION BUTTON

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
                  builder: (context) => new AniadirGrupo());
              Navigator.push(context, ruta);
            },
            /*children: [
              SpeedDialChild(
                child: Icon(Icons.add, color: Colors.white),
                backgroundColor: Colors.deepOrange,
                label: 'Añadir Lo que te salga los huevos',
                labelStyle: TextStyle(fontWeight: FontWeight.w500),
                labelBackgroundColor: Colors.deepOrangeAccent,
              ),
              SpeedDialChild(
                child: Icon(Icons.send, color: Colors.white),
                backgroundColor: Colors.green,
                label: 'Enviar un nabo',
                labelStyle: TextStyle(fontWeight: FontWeight.w500),
                labelBackgroundColor: Colors.green,
              ),
            ],*/
          ),
          /*floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Add your onPressed code here!
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.orange,
          ),*/

          //body: Busqueda(),
        ));
  }
}
