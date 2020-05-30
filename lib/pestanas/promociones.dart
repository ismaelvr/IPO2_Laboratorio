import "package:flutter/material.dart";
import 'package:pr_ipo2/interfaces/AniadirPromocion.dart';
import 'package:pr_ipo2/interfaces/interfazPromociones.dart';
import 'package:pr_ipo2/objetos/drawer.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Promociones extends StatefulWidget {
  static const nombreRuta = "/promociones";
  @override
  _PromocionesState createState() => _PromocionesState();
}

class _PromocionesState extends State<Promociones> {
  void _ayuda(BuildContext context) {
    AlertDialog dialogo = new AlertDialog(
      content: new Text(
          'Aquí se pueden visualizar las promociones existentes. Para ver más detalles hay que hacer click en una de ellas. Para añadir promociones hay que hacer click en el botón de la parte inferior derecha.'),
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
            title: new Text("Promociones"),
            backgroundColor: Colors.orange,
          ),
          drawer: new Drawer(child: DrawerVista(5)),
          body: new InterfazPromociones(),

          // FLOATING ACTION BUTTON

          floatingActionButton: SpeedDial(
            tooltip: "Añadir promoción",
            marginBottom: 50,
            marginRight: 30,
            backgroundColor: Colors.orange,
            animatedIcon: AnimatedIcons.add_event,
            curve: Curves.easeInOutSine,
            onPress: () {
              Route ruta = new MaterialPageRoute(builder: (context) => new AniadirPromocion());
              Navigator.push(context, ruta);
            },
          ),
        ));
  }
}
