import 'package:flutter/material.dart';
import 'package:pr_ipo2/interfaces/interfazPrincipal.dart';

class Principal extends StatefulWidget {
static const nombreRuta = "/principal";
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {

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


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        actions: [
        IconButton(icon: Icon(Icons.help),
        onPressed: () {_ayuda(context);},
        )],
        title: new Text("Gestor de rutas: TU-RURAL"),
        leading: new Container(),
        backgroundColor: Colors.orange,
      ),
      //drawer: new Drawer(child: _construirListView(context)),
      body: new InterfazPrincipal(),
      
    );
  }
}


