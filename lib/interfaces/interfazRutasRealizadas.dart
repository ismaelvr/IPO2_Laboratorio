import 'package:flutter/material.dart';
import 'package:pr_ipo2/objetos/ruta.dart';
import "package:pr_ipo2/interfaces/ItemRutas.dart";

class InterfazRutasRealizadas extends StatefulWidget {
  @override
  _InterfazRutasRealizadasState createState() => _InterfazRutasRealizadasState();
}

class _InterfazRutasRealizadasState extends State<InterfazRutasRealizadas> {
  List<Ruta> rutas;

  @override
  void initState() {

    super.initState();
    rutas = <Ruta>[
      Ruta(
          nombre: "Ruta del vino y se fue",
          id: "16328",
          descripcion: "Esta ruta se llevará a cabo en la localidad de Valdepeñas",
          fecha: "21/3/2020",
          precio: 10,
          duracion: 3,
          idiomas: ["Español", "Inglés", "Alemán"],
          lugaresInteres: ["Suecia", "Venecia"],
          puntuacion: 2,
          plazas: 8,
          foto: "assets/iglesiavalde.png"),
        Ruta(
          nombre: "Una",
          id: "123",
          descripcion: "Es feo",
          fecha: "21/3/2020",
          precio: 10,S
          duracion: 3,
          idiomas: ["Español", "Inglés", "Alemán"],
          lugaresInteres: ["Suecia", "Venecia"],
          puntuacion: 2,
          plazas: 8,
          foto: "assets/puertasantamaria.png"),
        Ruta(
          nombre: "Avermaria",
          id: "16328",
          descripcion: "Es feo",
          fecha: "21/3/2020",
          precio: 10,
          duracion: 3,
          idiomas: ["Español", "Inglés", "Alemán"],
          lugaresInteres: ["Suecia", "Venecia"],
          puntuacion: 2,
          plazas: 8,
          foto: "assets/sanjuandeavila.png")
          ,
        Ruta(
          nombre: "Avermaria",
          id: "16328",
          descripcion: "Es feo",
          fecha: "21/3/2020",
          precio: 10,
          duracion: 3,
          idiomas: ["Español", "Inglés", "Alemán"],
          lugaresInteres: ["Suecia", "Venecia"],
          puntuacion: 2,
          plazas: 8,
          foto: "assets/villarrubia.png")
          ,
        Ruta(
          nombre: "Avermaria",
          id: "16328",
          descripcion: "Es feo",
          fecha: "21/3/2020",
          precio: 10,
          duracion: 3,
          idiomas: ["Español", "Inglés", "Alemán"],
          lugaresInteres: ["Suecia", "Venecia"],
          puntuacion: 2,
          plazas: 8,
          foto: "assets/iglesiavalde.png")
          ,
        Ruta(
          nombre: "Avermaria",
          id: "16328",
          descripcion: "Es feo",
          fecha: "21/3/2020",
          precio: 10,
          duracion: 3,
          idiomas: ["Español", "Inglés", "Alemán"],
          lugaresInteres: ["Suecia", "Venecia"],
          puntuacion: 2,
          plazas: 8,
          foto: "assets/sanjuandeavila.png")
          ,
        Ruta(
          nombre: "Avermaria",
          id: "16328",
          descripcion: "Es feo",
          fecha: "21/3/2020",
          precio: 10,
          duracion: 3,
          idiomas: ["Español", "Inglés", "Alemán"],
          lugaresInteres: ["Suecia", "Venecia"],
          puntuacion: 2,
          plazas: 8,
          foto: "assets/puertasantamaria.png")
          ,
        Ruta(
          nombre: "Avermaria",
          id: "16328",
          descripcion: "Es feo",
          fecha: "21/3/2020",
          precio: 10,
          duracion: 3,
          idiomas: ["Español", "Inglés", "Alemán"],
          lugaresInteres: ["Suecia", "Venecia"],
          puntuacion: 2,
          plazas: 8,
          foto: "assets/iglesiavalde.png")
          ,
        Ruta(
          nombre: "Avermaria",
          id: "16328",
          descripcion: "Es feo",
          fecha: "21/3/2020",
          precio: 10,
          duracion: 3,
          idiomas: ["Español", "Inglés", "Alemán"],
          lugaresInteres: ["Suecia", "Venecia"],
          puntuacion: 2,
          plazas: 8,
          foto: "assets/villarrubia.png")
          ,
        Ruta(
          nombre: "Avermaria",
          id: "16328",
          descripcion: "Es feo",
          fecha: "21/3/2020",
          precio: 10,
          duracion: 3,
          idiomas: ["Español", "Inglés", "Alemán"],
          lugaresInteres: ["Suecia", "Venecia"],
          puntuacion: 2,
          plazas: 8,
          foto: "assets/iglesiavalde.png")
          ,
        Ruta(
          nombre: "Avermaria",
          id: "16328",
          descripcion: "Es feo",
          fecha: "21/3/2020",
          precio: 10,
          duracion: 3,
          idiomas: ["Español", "Inglés", "Alemán"],
          lugaresInteres: ["Suecia", "Venecia"],
          puntuacion: 2,
          plazas: 8,
          foto: "assets/iglesiavalde.png")
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: rutas.length,
        itemBuilder: (context, int item) => new ItemRutas(rutas[item]));
  }
}
