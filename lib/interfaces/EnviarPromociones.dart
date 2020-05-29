import "package:flutter/material.dart";
import 'package:pr_ipo2/interfaces/AniadirPromocion.dart';

import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'interfazEnviarPromociones.dart';

class EnviarPromociones extends StatefulWidget {
  static const nombreRuta = "/enviarpromociones";
  @override
  _EnviarPromocionesState createState() => _EnviarPromocionesState();
}

class _EnviarPromocionesState extends State<EnviarPromociones> {
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

  void _enviarProm(BuildContext context) {
    AlertDialog enviado = new AlertDialog(
      content: new Text("Promocion enviada correctamente"),
      actions: <Widget>[
        new FlatButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: new Text("Ok")),
      ],
    );
    AlertDialog dialogo = new AlertDialog(
      content: new Text("¿Enviar promoción a los grupos seleccionados?"),
      actions: <Widget>[
        new FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: new Text("Cancelar")),
        new FlatButton(
            onPressed: () {
              Navigator.pop(context);
              showDialog(context: context, child: enviado);
            },
            child: new Text("Enviar")),
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
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                tooltip: "Ayuda",
                icon: Icon(Icons.help),
                onPressed: () {
                  _ayuda(context);
                },
              )
            ],
            title: new Text("Seleccionar grupos"),
            backgroundColor: Colors.orange,
          ),
          body: new InterfazEnviarPromociones(),

          // FLOATING ACTION BUTTON
          floatingActionButton: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 70, 35),
                  child: FloatingActionButton(
                    heroTag: "Cancel",
                    tooltip: "Cancelar",
                    child: Icon(Icons.arrow_back),
                    backgroundColor: Colors.orange,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 5, 35),
                  child: FloatingActionButton(
                    heroTag: "Confirmar",
                    tooltip: "Confirmar envío",
                    child: Icon(Icons.send),
                    backgroundColor: Colors.orange,
                    onPressed: () {
                      _enviarProm(context);
                      /*Route ruta = new MaterialPageRoute(builder: (context) => new EnviarPromociones());
                Navigator.push(context, ruta);*/
                    },
                  ),
                ),
              ),
            ],
          ),
          /*floatingActionButton: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 15, 35),
            child: FloatingActionButton(
              tooltip: "Enviar promoción",
              child: Icon(Icons.send),
              backgroundColor: Colors.orange,
              onPressed: () {
                /*Route ruta = new MaterialPageRoute(builder: (context) => new EnviarPromociones());
                Navigator.push(context, ruta);*/
              },
            ),
          ),*/
        ));
  }
}
