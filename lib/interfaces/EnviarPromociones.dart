import "package:flutter/material.dart";
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
        onWillPop: () async => true,
        child: Scaffold(
          appBar: new AppBar(
            actions: [
              IconButton(
                tooltip: "Ayuda",
                icon: Icon(Icons.help),
                onPressed: () {
                  Navigator.pop(context);
                  _ayuda(context);
                },
              )
            ],
            title: new Text("Seleccionar grupos"),
            backgroundColor: Colors.orange,
          ),
          body: new InterfazEnviarPromociones(),

          // FLOATING ACTION BUTTON

          floatingActionButton: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 15, 35),
            child: FloatingActionButton(
              tooltip: "Enviar promoción",
              child: Icon(Icons.send),
              backgroundColor: Colors.orange,
              onPressed: () {
                _enviarProm(context);
              },
            ),
          ),
        ));
  }
}
