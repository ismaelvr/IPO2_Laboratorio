import "package:flutter/material.dart";
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:pr_ipo2/interfaces/ModificarRutaProxima.dart';
//import 'package:pr_ipo2/pestanas/maps.dart';
import 'package:pr_ipo2/objetos/rutasProximas.dart';
import 'package:toast/toast.dart';

class DetallesRutaProxima extends StatefulWidget {
  final RutaProxima rutaProxima;

  DetallesRutaProxima({this.rutaProxima});
  @override
  _DetallesRutaProximaState createState() => _DetallesRutaProximaState();
}

class _DetallesRutaProximaState extends State<DetallesRutaProxima> {
  @override
  Widget build(BuildContext context) {
    void _eliminarRuta(BuildContext context) {
      AlertDialog dialogo = new AlertDialog(
        content: new Text('¿Está seguro de que desea eliminar esta ruta?'),
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

                Toast.show("Ruta eliminada correctamente", context, duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
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
            tooltip: "Modificar ruta",
            icon: Icon(Icons.mode_edit),
            onPressed: () {
              Route ruta = new MaterialPageRoute(builder: (context) => new ModificarRutaProxima(widget.rutaProxima));

              Navigator.push(context, ruta);
            },
          ),
          IconButton(
            tooltip: "Eliminar ruta",
            icon: Icon(Icons.delete),
            onPressed: () {
              _eliminarRuta(context);
            },
          )
        ],
        title: new Text(widget.rutaProxima.nombre),
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
                        image: AssetImage(widget.rutaProxima.foto),
                        width: 200,
                        height: 200,
                      )),
                      // NOMBRES DATOS
                      new Container(
                          child: new SingleChildScrollView(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: new Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                                Padding(padding: const EdgeInsets.fromLTRB(0, 15, 0, 8)),
                                nuevaFila("ID ", Icons.account_box, widget.rutaProxima.id),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 15, 0, 8)),
                                nuevaFila("Fecha ", Icons.calendar_today, widget.rutaProxima.fecha),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                nuevaFila("Precio ", Icons.attach_money, widget.rutaProxima.precio.toString() + " euros"),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                nuevaFila("Idiomas ", Icons.language, widget.rutaProxima.idiomas.toString()),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                nuevaFila("Lugares de interés ", Icons.golf_course, widget.rutaProxima.lugaresInteres.toString()),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                nuevaFila("Duración ", Icons.timer, widget.rutaProxima.duracion.toString() + " horas"),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                nuevaFila("Vehículos ", Icons.local_airport, widget.rutaProxima.vehiculos.toString()),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                nuevaFila(
                                    "Plazas ", Icons.format_list_numbered, widget.rutaProxima.plazas.toString() + " personas"),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                nuevaFila("Descripción ", Icons.description, ""),
                                Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                                Text(widget.rutaProxima.descripcion,
                                    textAlign: TextAlign.justify, style: TextStyle(fontSize: 16)),
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
