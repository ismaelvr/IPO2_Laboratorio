import "package:flutter/material.dart";

enum Acciones { si, no }

class AreaOpinionPersonal extends StatefulWidget {
  @override
  _AreaOpinionPersonalState createState() => _AreaOpinionPersonalState();
}

class _AreaOpinionPersonalState extends State<AreaOpinionPersonal> {
  String _opinion = ""; // Propiedad dinámica
  String _ultOpinionEnviada = ""; // Propiedad dinámica
  TextEditingController opinionController = new TextEditingController();
  void _realizarAccion(Acciones accion) {
    if (accion == Acciones.si) {
      print("Tu opinión personal ha sido enviada");
      setState(() {
        opinionController.clear();
        // Sería Lo mismo que:
        // opinionController.text="";
        _ultOpinionEnviada = _opinion;
        _opinion = "";
      });
    } else {
      print("No se ha mandado tu opinión");
    }
  }

  void _mostrarDialogo() {
    AlertDialog dialogo = new AlertDialog(
      content: new Text('¿Seguro que deseas expresar tu opinión?\n\n'
          '\"$_opinion\"'),
      actions: <Widget>[
        new FlatButton(
            onPressed: () {
              _realizarAccion(Acciones.si);
              // Para cerrar el cuadro de dialogo
              Navigator.pop(context);
            },
            child: new Text("Sí")),
        new FlatButton(
            onPressed: () {
              // Para cerrar el cuadro de dialogo
              _realizarAccion(Acciones.no);
              Navigator.pop(context);
            },
            child: new Text("No"))
      ],
    );
    showDialog(context: context, child: dialogo);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8.0),
        child: new Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "Introduce tu opinión personal o lo que quieras...",
              ),
              onChanged: (String data) {
                _opinion = data;
              },
              maxLines: 2,
              controller: opinionController,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
            ),
            RaisedButton(
                child: new Text("Enviar opinión personal"),
                onPressed: () {
                  _mostrarDialogo();
                }),
            Text("Última opinión enviada: $_ultOpinionEnviada"),
            Padding(
              padding: const EdgeInsets.all(15.0),
            ),
            RaisedButton(
                child: new Text("Volver al voto directo"),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
        )));
  }
}
