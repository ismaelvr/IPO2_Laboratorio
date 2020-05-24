import 'package:flutter/material.dart';
import 'package:pr_ipo2/objetos/rutasProximas.dart';
import "package:pr_ipo2/interfaces/ItemRutasProximas.dart";

class InterfazProximasRutas extends StatefulWidget {
  @override
  _InterfazProximasRutasState createState() => _InterfazProximasRutasState();
}

class _InterfazProximasRutasState extends State<InterfazProximasRutas> {
  List<RutaProxima> rutas;

  @override
  void initState() {
    super.initState();
    rutas = <RutaProxima>[
      RutaProxima(
          "Ruta cascabel",
          "16328",
          "Esta ruta se llevará a cabo en la localidad de Valdepeñas",
          "21/3/2020",
          10,
          3,
          ["Español", "Inglés", "Alemán"],
          ["Suecia", "Venecia"],
          4,
          "assets/iglesiavalde.png",
          false,
          ["Autobús", "Bicicleta"]),
      RutaProxima(
          "La mancha",
          "63224",
          "Esta ruta se llevará a cabo en la localidad de Valdepeñas",
          "21/3/2020",
          10,
          3,
          ["Español", "Inglés", "Alemán"],
          ["Suecia", "Venecia"],
          4,
          "assets/villarrubia.png",
          false,
          ["Autobús", "Bicicleta"]),
      RutaProxima(
          "Ruta ER CAMPO",
          "98272",
          "Esta ruta se llevará a cabo en la localidad de Valdepeñas",
          "21/3/2020",
          10,
          3,
          ["Español", "Inglés", "Alemán"],
          ["Suecia", "Venecia"],
          4,
          "assets/sanjuandeavila.png",
          false,
          ["Autobús", "Bicicleta"]),
      RutaProxima(
          "Santa María",
          "00912",
          "Esta ruta se llevará a cabo en la localidad de Valdepeñas",
          "21/3/2020",
          10,
          3,
          ["Español", "Inglés", "Alemán"],
          ["Suecia", "Venecia"],
          4,
          "assets/puertasantamaria.png",
          false,
          ["Autobús", "Bicicleta"]),
      RutaProxima(
          "Ruta de Palencia",
          "99833",
          "Esta ruta se llevará a cabo en la localidad de Valdepeñas",
          "21/3/2020",
          10,
          3,
          ["Español", "Inglés", "Alemán"],
          ["Suecia", "Venecia"],
          4,
          "assets/iglesiavalde.png",
          false,
          ["Autobús", "Bicicleta"]),
      RutaProxima(
          "Ruta de Vélez",
          "11122",
          "Esta ruta se llevará a cabo en la localidad de Valdepeñas",
          "21/3/2020",
          10,
          3,
          ["Español", "Inglés", "Alemán"],
          ["Suecia", "Venecia"],
          4,
          "assets/villarrubia.png",
          false,
          ["Autobús", "Bicicleta"]),
      RutaProxima(
          "Ruta el as de la manga",
          "66532",
          "Esta ruta se llevará a cabo en la localidad de Valdepeñas",
          "21/3/2020",
          10,
          3,
          ["Español", "Inglés", "Alemán"],
          ["Suecia", "Venecia"],
          4,
          "assets/sanjuandeavila.png",
          false,
          ["Autobús", "Bicicleta"]),
      RutaProxima(
          "Ruta del Cristo",
          "82917",
          "Esta ruta se llevará a cabo en la localidad de Valdepeñas",
          "21/3/2020",
          10,
          3,
          ["Español", "Inglés", "Alemán"],
          ["Suecia", "Venecia"],
          4,
          "assets/puertasantamaria.png",
          false,
          ["Autobús", "Bicicleta"]),
      RutaProxima(
          "Ruta cascabel",
          "16328",
          "Esta ruta se llevará a cabo en la localidad de Valdepeñas",
          "21/3/2020",
          10,
          3,
          ["Español", "Inglés", "Alemán"],
          ["Suecia", "Venecia"],
          4,
          "assets/iglesiavalde.png",
          false,
          ["Autobús", "Bicicleta"]),
      RutaProxima(
          "La mancha",
          "63224",
          "Esta ruta se llevará a cabo en la localidad de Valdepeñas",
          "21/3/2020",
          10,
          3,
          ["Español", "Inglés", "Alemán"],
          ["Suecia", "Venecia"],
          4,
          "assets/villarrubia.png",
          false,
          ["Autobús", "Bicicleta"]),
      RutaProxima(
          "Ruta ER CAMPO",
          "98272",
          "Esta ruta se llevará a cabo en la localidad de Valdepeñas",
          "21/3/2020",
          10,
          3,
          ["Español", "Inglés", "Alemán"],
          ["Suecia", "Venecia"],
          4,
          "assets/sanjuandeavila.png",
          false,
          ["Autobús", "Bicicleta"]),
      RutaProxima(
          "Santa María",
          "00912",
          "Esta ruta se llevará a cabo en la localidad de Valdepeñas",
          "21/3/2020",
          10,
          3,
          ["Español", "Inglés", "Alemán"],
          ["Suecia", "Venecia"],
          4,
          "assets/puertasantamaria.png",
          false,
          ["Autobús", "Bicicleta"]),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: rutas.length,
        itemBuilder: (context, int item) => new ItemRutasProximas(rutas[item]));
  }
}
