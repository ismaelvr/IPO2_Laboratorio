import "package:flutter/material.dart";
import 'package:pr_ipo2/objetos/rutasRealizadas.dart';
import 'package:toast/toast.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class DetallesRutaRealizada extends StatefulWidget {
  final RutaRealizada ruta;

  DetallesRutaRealizada({this.ruta});
  @override
  _DetallesRutaRealizadaState createState() => _DetallesRutaRealizadaState();
}

class _DetallesRutaRealizadaState extends State<DetallesRutaRealizada> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orange,
        title: new Text(widget.ruta.nombre),
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
                        image: AssetImage(widget.ruta.foto),
                        width: 200,
                        height: 200,
                      )),
                      // NOMBRES DATOS
                      new Container(
                          child: new SingleChildScrollView(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: new Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                                Padding(padding: const EdgeInsets.fromLTRB(0, 15, 0, 8)),
                                nuevaFila("ID ", Icons.account_box, widget.ruta.id),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                nuevaFila("Fecha ", Icons.calendar_today, widget.ruta.fecha),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                nuevaFila("Precio ", Icons.attach_money, widget.ruta.precio.toString() + " euros"),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                nuevaFila("Idiomas ", Icons.language, widget.ruta.idiomas.toString()),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                nuevaFila("Lugares de interés ", Icons.local_airport, ""),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                Text(widget.ruta.lugaresInteres.toString(),
                                    textAlign: TextAlign.justify, style: TextStyle(fontSize: 16)),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                nuevaFila("Duración ", Icons.timer, widget.ruta.duracion.toString() + " horas"),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                nuevaFila("Puntuación ", Icons.grade, widget.ruta.puntuacion.toString() + "/5"),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                nuevaFila("Plazas ", Icons.format_list_numbered, widget.ruta.plazas.toString() + " personas"),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                nuevaFila("Descripción ", Icons.description, ""),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                Text(widget.ruta.descripcion,
                                    textAlign: TextAlign.justify, style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                              ]))),
                    ],
                  )),
            ),
          )),
      floatingActionButton: SpeedDial(
        tooltip: "Ver en maps",
        marginBottom: 50,
        marginRight: 30,
        backgroundColor: Colors.orange,
        animatedIcon: AnimatedIcons.search_ellipsis,
        curve: Curves.easeInOutSine,
        onPress: () {
          Toast.show("En desarrollo", context, duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
          /*  Route ruta = new MaterialPageRoute(builder: (context) => new Maps());
          Navigator.push(context, ruta);*/
        },
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
