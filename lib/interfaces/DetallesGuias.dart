import "package:flutter/material.dart";
import 'package:pr_ipo2/objetos/guia.dart';

class DetallesGuias extends StatefulWidget {
  final Guia guia;
  DetallesGuias({this.guia});
  @override
  _DetallesGuiasState createState() => _DetallesGuiasState();
}

class _DetallesGuiasState extends State<DetallesGuias> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.orange,
          title: new Text(widget.guia.nombre),
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
                                child: new Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 15, 0, 8)),
                                      nuevaFila("ID ", Icons.account_box,
                                          widget.guia.id),
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 8, 0, 8)),
                                      nuevaFila("Fecha ", Icons.calendar_today,
                                          widget.guia.correo),
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 8, 0, 8)),
                                      nuevaFila(
                                          "Precio ",
                                          Icons.attach_money,
                                          widget.guia.sueldo.toString() +
                                              " euros"),
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 8, 0, 8)),
                                      nuevaFila("Idiomas ", Icons.language, ""),
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 8, 0, 8)),
                                      Text(widget.guia.idiomas.toString(),
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.bold)),
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 8, 0, 8)),
                                      nuevaFila("Lugares de interés ",
                                          Icons.local_airport, ""),
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 8, 0, 8)),
                                      nuevaFila(
                                          "Duración ",
                                          Icons.timer,
                                          widget.guia.valoracion.toString() +
                                              " horas"),
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 8, 0, 8)),
                                      nuevaFila("Descripción ",
                                          Icons.description, ""),
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 8, 0, 8)),
                                      Text(widget.guia.descripcion,
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.bold)),
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 8, 0, 8)),
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
              Text("  " + nombre + " ",
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold)),
              Icon(
                icon,
                size: 35,
                color: Colors.white,
              ),
              Text(
                " : ",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Text(
          "  " + texto,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
