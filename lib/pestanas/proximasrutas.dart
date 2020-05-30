import "package:flutter/material.dart";
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:pr_ipo2/interfaces/interfazProximasRutas.dart';
import 'package:pr_ipo2/objetos/drawer.dart';
import 'package:pr_ipo2/interfaces/AniadirRutaProxima.dart';

class ProximasRutas extends StatefulWidget {
  static const nombreRuta = "/proximasrutas";
  @override
  _ProximasRutasState createState() => _ProximasRutasState();
}

class _ProximasRutasState extends State<ProximasRutas> {
  void _ayuda(BuildContext context) {
    AlertDialog dialogo = new AlertDialog(
      content: new Text(
          'Aquí se pueden visualizar las próximas rutas. Para ver más detalles hay que hacer click en uno de ellos. Para añadir rutas hay que hacer click en el botón de la parte inferior '),
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
            //automaticallyImplyLeading: false,
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
            title: new Text("Próximas Rutas"),
            backgroundColor: Colors.orange,
          ),
          drawer: new Drawer(child: DrawerVista(2)),
          body: new InterfazProximasRutas(),
          floatingActionButton: SpeedDial(
            tooltip: "Añadir ruta",
            marginBottom: 50,
            marginRight: 30,
            backgroundColor: Colors.orange,
            animatedIcon: AnimatedIcons.add_event,
            curve: Curves.easeInOutSine,
            onPress: () {
              Route ruta = new MaterialPageRoute(builder: (context) => new AniadirRutaProxima());
              Navigator.push(context, ruta);
            },
          ),
        ));
  }
}
