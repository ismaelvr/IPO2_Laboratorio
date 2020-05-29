import "package:flutter/material.dart";
import 'package:pr_ipo2/objetos/guia.dart';
import 'package:pr_ipo2/interfaces/ModificarGuia.dart';
import 'package:toast/toast.dart';

class DetallesGuias extends StatefulWidget {
  final Guia guia;
  DetallesGuias({this.guia});
  @override
  _DetallesGuiasState createState() => _DetallesGuiasState();
}

class _DetallesGuiasState extends State<DetallesGuias> {
  @override
  Widget build(BuildContext context) {
    void _eliminarGuia(BuildContext context) {
      AlertDialog dialogo = new AlertDialog(
        content: new Text('¿Está seguro de que desea eliminar este guía?'),
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

                Toast.show("Guía eliminado correctamente", context, duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
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
              tooltip: "Modificar guía",
              icon: Icon(Icons.mode_edit),
              onPressed: () {
                //_mofidicarGrupo(context);
                Route ruta = new MaterialPageRoute(builder: (context) => new ModificarGuia(widget.guia));

                Navigator.push(context, ruta);
                //ModificarGrupo(widget.grupo);
              },
            ),
            IconButton(
              tooltip: "Eliminar guía",
              icon: Icon(Icons.delete),
              onPressed: () {
                _eliminarGuia(context);
              },
            )
          ],
          title: new Text(widget.guia.nombre),
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
                          image: AssetImage(widget.guia.foto),
                          width: 200,
                          height: 200,
                        )),
                        // NOMBRES DATOS
                        new Container(
                            child: new SingleChildScrollView(
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: new Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                                  Padding(padding: const EdgeInsets.fromLTRB(0, 15, 0, 8)),
                                  nuevaFila("ID ", Icons.account_box, widget.guia.id),
                                  Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                  nuevaFila("Correo ", Icons.mail, widget.guia.correo),
                                  Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                  nuevaFila("Salario ", Icons.attach_money, widget.guia.sueldo.toString() + " euros"),
                                  Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                  nuevaFila("Idiomas ", Icons.language, ""),
                                  Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                  Text(widget.guia.idiomas.toString(),
                                      textAlign: TextAlign.justify, style: TextStyle(fontSize: 16)),
                                  Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                  nuevaFila("Valoración ", Icons.rate_review, widget.guia.valoracion.toString() + "/5.0"),
                                  Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                  nuevaFila("Descripción ", Icons.description, ""),
                                  Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                  Text(widget.guia.descripcion,
                                      textAlign: TextAlign.justify, style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16)),
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
              Text("  " + nombre + " ", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
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
