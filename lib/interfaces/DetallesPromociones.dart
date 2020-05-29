import "package:flutter/material.dart";
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:pr_ipo2/interfaces/EnviarPromociones.dart';
import 'package:pr_ipo2/interfaces/ModificarGuia.dart';
import 'package:pr_ipo2/interfaces/ModificarPromocion.dart';
import 'package:pr_ipo2/objetos/promocion.dart';
import 'package:toast/toast.dart';

class DetallesPromocion extends StatefulWidget {
  final Promocion promocion;
  DetallesPromocion({this.promocion});
  @override
  _DetallesPromocionState createState() => _DetallesPromocionState();
}

class _DetallesPromocionState extends State<DetallesPromocion> {
  @override
  Widget build(BuildContext context) {
    void _eliminarPromocion(BuildContext context) {
      AlertDialog dialogo = new AlertDialog(
        content: new Text('¿Está seguro de que desea eliminar esta promoción?'),
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

                Toast.show("Promoción eliminada correctamente", context, duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
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
            tooltip: "Modificar promoción",
            icon: Icon(Icons.mode_edit),
            onPressed: () {
              //_mofidicarGrupo(context);
              Route ruta = new MaterialPageRoute(builder: (context) => new ModificarPromocion(widget.promocion));

              Navigator.push(context, ruta);
              //ModificarGrupo(widget.grupo);
            },
          ),
          IconButton(
            tooltip: "Eliminar promoción",
            icon: Icon(Icons.delete),
            onPressed: () {
              _eliminarPromocion(context);
            },
          )
        ],
        title: new Text(widget.promocion.nombre),
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
                        image: AssetImage(widget.promocion.foto),
                        width: 200,
                        height: 200,
                      )),
                      // NOMBRES DATOS
                      new Container(
                          child: new SingleChildScrollView(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: new Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                                Padding(padding: const EdgeInsets.fromLTRB(0, 15, 0, 8)),
                                nuevaFila("ID ", Icons.account_box, widget.promocion.id),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                nuevaFila("Idiomas ", Icons.language, widget.promocion.idiomas),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                nuevaFila("Precio ", Icons.attach_money, widget.promocion.precio.toString() + " euros"),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                nuevaFila("Descripción ", Icons.description, ""),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                Text(widget.promocion.descripcion, textAlign: TextAlign.justify, style: TextStyle(fontSize: 16)),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                              ]))),
                    ],
                  )),
            ),
          )),
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 15, 35),
        child: FloatingActionButton(
          tooltip: "Enviar promoción",
          child: Icon(Icons.send),
          backgroundColor: Colors.orange,
          onPressed: () {
            Route ruta = new MaterialPageRoute(builder: (context) => new EnviarPromociones());
            Navigator.push(context, ruta);
          },
        ),
      ),
    );
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
