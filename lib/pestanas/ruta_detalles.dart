import "package:flutter/material.dart";
import 'package:pr_ipo2/objetos/ruta.dart';

class DetallesRuta extends StatefulWidget {
  final Ruta ruta;

  DetallesRuta({this.ruta});
  @override
  _DetallesRutaState createState() => _DetallesRutaState();
}

class _DetallesRutaState extends State<DetallesRuta> {

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
                            child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 15, 0, 8)),
                          Text("    ID: " + widget.ruta.id,
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                          Text("    Fecha: " + widget.ruta.fecha,
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                          Text(
                              "    Precio: " +
                                  widget.ruta.precio.toString() +
                                  " euros",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                          Text("    Idiomas: " + widget.ruta.idiomas.toString(),
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                          Text(
                              "    Lugares de interés: " +
                                  widget.ruta.lugaresInteres.toString(),
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                          Text(
                              "    Duración: " +
                                  widget.ruta.duracion.toString() +
                                  " horas",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                              
                          
                          /*if(widget.ruta.real){
                            
                          },*/
                          
                          Text(
                              "    Puntuación: " +
                                  widget.ruta.puntuacion.toString() +
                                  "/5",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                            
                          Text(
                              "    Plazas: " +
                                  widget.ruta.plazas.toString() +
                                  "/grupo\n",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                          Text("DESCRIPCIÓN: \n\n" + widget.ruta.descripcion,
                              style: TextStyle(fontStyle: FontStyle.italic))
                        ]))),
                  ],
                )),
          ),
          )
        ));
  }
}
