import "package:flutter/material.dart";
import 'package:pr_ipo2/objetos/grupo.dart';
import 'package:toast/toast.dart';
import 'package:pr_ipo2/interfaces/ModificarGrupo.dart';

class DetallesGrupos extends StatefulWidget {
  final Grupo grupo;
  DetallesGrupos({this.grupo});
  @override
  _DetallesGruposState createState() => _DetallesGruposState();
}

class _DetallesGruposState extends State<DetallesGrupos> {
  @override
  Widget build(BuildContext context) {
    void _eliminarGrupo(BuildContext context) {
      AlertDialog dialogo = new AlertDialog(
        content: new Text('¿Está seguro de que desea eliminar este grupo?'),
        actions: <Widget>[
          new FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: new Text("Cancelar")),
          new FlatButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);

                Toast.show("Grupo eliminado correctamente", context, duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
              },
              child: new Text("Confirmar")),
        ],
      );
      showDialog(context: context, child: dialogo);
    }

    return new Scaffold(
        appBar: new AppBar(
          actions: [
            IconButton(
              tooltip: "Modificar grupo",
              icon: Icon(Icons.mode_edit),
              onPressed: () {
                Route ruta = new MaterialPageRoute(builder: (context) => new ModificarGrupo(widget.grupo));
                Navigator.push(context, ruta);
              },
            ),
            IconButton(
              tooltip: "Eliminar grupo",
              icon: Icon(Icons.delete),
              onPressed: () {
                _eliminarGrupo(context);
              },
            )
          ],
          title: new Text("ID grupo: " + widget.grupo.id),
          backgroundColor: Colors.orange,
        ),
        body: new Container(
            padding: const EdgeInsets.only(top: 6.0),
            child: SingleChildScrollView(
              child: new Card(
                child: Container(
                    padding: const EdgeInsets.all(10),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        // FOTO
                        new Container(
                            child: Image(
                          image: AssetImage(widget.grupo.foto),
                          width: 200,
                          height: 200,
                        )),
                        // NOMBRES DATOS
                        new Container(
                            child: new SingleChildScrollView(
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: new Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                                  Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                  nuevaFila("Restricciones ", Icons.block, ""),
                                  Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                  Text(
                                    widget.grupo.restricciones.toString(),
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                  nuevaFila("Intereses ", Icons.bookmark, widget.grupo.intereses.toString()),
                                  Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                  nuevaFila("Tamaño ", Icons.people, widget.grupo.tamano.toString()),
                                  Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                  nuevaFila("Idioma ", Icons.language, widget.grupo.idioma.toString()),
                                  Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                ]))),
                      ],
                    )),
              ),
            )));
  }

  Row nuevaFila(String nombre, IconData icon, String texto) {
    return Row(
      children: <Widget>[
        new Container(
          decoration: BoxDecoration(color: Colors.blue),
          child: Row(
            children: <Widget>[
              Text("  " + nombre + " ", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
              Icon(
                icon,
                size: 35,
                color: Colors.white,
              ),
              Text(
                " : ",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Text(
          "  " + texto,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
