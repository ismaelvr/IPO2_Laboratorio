import 'package:flutter/material.dart';
import 'package:pr_ipo2/objetos/ruta.dart';
import "package:pr_ipo2/interfaces/ItemRutas.dart";

class InterfazProximasRutas extends StatefulWidget {
  @override
  _InterfazProximasRutasState createState() => _InterfazProximasRutasState();
}

class _InterfazProximasRutasState extends State<InterfazProximasRutas> {
  List<Ruta> rutas;

  @override
  void initState() {

    super.initState();
    rutas = <Ruta>[
      Ruta(
          nombre: "Próxima ruta 1",
          id: "16328",
          descripcion: "Esta ruta se llevará a cabo en la localidad de Valdepeñas",
          fecha: "21/3/2020",
          precio: 10,
          duracion: 3,
          idiomas: ["Español", "Inglés", "Alemán"],
          lugaresInteres: ["Suecia", "Venecia"],
          plazas: 8,
          foto: "assets/iglesiavalde.png",
          real: false),
        Ruta(
          nombre: "Próxima ruta 2",
          id: "123",
          descripcion: "Es feo",
          fecha: "21/3/2020",
          precio: 10,
          duracion: 3,
          idiomas: ["Español", "Inglés", "Alemán"],
          lugaresInteres: ["Suecia", "Venecia"],
          plazas: 8,
          foto: "assets/puertasantamaria.png",
          real: false),
        Ruta(
          nombre: "Próxima ruta 3",
          id: "16328",
          descripcion: "Es feo",
          fecha: "21/3/2020",
          precio: 10,
          duracion: 3,
          idiomas: ["Español", "Inglés", "Alemán"],
          lugaresInteres: ["Suecia", "Venecia"],
          plazas: 8,
          foto: "assets/sanjuandeavila.png",
          real: false)
          ,
        Ruta(
          nombre: "Próxima ruta 4",
          id: "16328",
          descripcion: "Es feo",
          fecha: "21/3/2020",
          precio: 10,
          duracion: 3,
          idiomas: ["Español", "Inglés", "Alemán"],
          lugaresInteres: ["Suecia", "Venecia"],
          plazas: 8,
          foto: "assets/villarrubia.png",
          real: false)
          ,
        Ruta(
          nombre: "Próxima ruta 5",
          id: "16328",
          descripcion: "Es feo",
          fecha: "21/3/2020",
          precio: 10,
          duracion: 3,
          idiomas: ["Español", "Inglés", "Alemán"],
          lugaresInteres: ["Suecia", "Venecia"],
          plazas: 8,
          foto: "assets/iglesiavalde.png",
          real: false)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: rutas.length,
        itemBuilder: (context, int item) => new ItemRutas(rutas[item]));
  }
}
