import 'package:flutter/material.dart';
import 'package:pr_ipo2/interfaces/interfazAjustes.dart';

class Ajustes extends StatefulWidget {
  static const nombreRuta = "/ajustes";
  @override
  _AjustesState createState() => _AjustesState();
}

class _AjustesState extends State<Ajustes> {
  void _ayuda(BuildContext context) {
    AlertDialog dialogo = new AlertDialog(
      content: new Text('Aquí se podrá modificar la configuración de la app.'),
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
        onWillPop: () async => true,
        child: Scaffold(
          appBar: new AppBar(
            actions: [
              IconButton(
                icon: Icon(Icons.help),
                onPressed: () {
                  _ayuda(context);
                },
              )
            ],
            title: new Text("Gestor de rutas: TU-RURAL"),
            backgroundColor: Colors.orange,
          ),
          body: new InterfazAjustes(),
        ));
  }
}
