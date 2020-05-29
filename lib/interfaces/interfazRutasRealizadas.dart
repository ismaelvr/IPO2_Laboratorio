import 'package:flutter/material.dart';
import "package:pr_ipo2/interfaces/ItemRutasRealizadas.dart";
import 'package:pr_ipo2/objetos/rutasRealizadas.dart';

class InterfazRutasRealizadas extends StatefulWidget {
  @override
  _InterfazRutasRealizadasState createState() =>
      _InterfazRutasRealizadasState();
}

class _InterfazRutasRealizadasState extends State<InterfazRutasRealizadas> {
  List<RutaRealizada> rutas;

  @override
  void initState() {
    super.initState();
    rutas = <RutaRealizada>[
      RutaRealizada(
          "Ruta del vino y se fue",
          "16328",
          "Esta ruta se llevará a cabo en la localidad de Valdepeñas. Se podrán observar"
              " una serie de monumentos y se seguirá una línea roja marcada en el mapa que se proporcionará.",
          "21/3/2020",
          10,
          3,
          "Español, Inglés, Alemán",
          "Campo de golf, Ir a vendimiar, A la oliva en pleno diciembre, Ver a DJ Beni",
          8,
          "assets/puertasantamaria.png",
          false,
          2),
      RutaRealizada(
        "Valdepeñas distinto",
        "04826",
        "Esta ruta se llevará a cabo en la localidad de Valdepeñas. Se podrán observar"
            " una serie de monumentos y se seguirá una línea roja marcada en el mapa que se proporcionará.",
        "21/3/2020",
        6,
        5,
        "Español, Inglés, Sueco",
        "Suecia, Venecia",
        8,
        "assets/iglesiavalde.png",
        false,
        4,
      ),
      RutaRealizada(
        "Ruta del quijote",
        "92883",
        "Esta ruta se llevará a cabo en la localidad de Valdepeñas. Se podrán observar"
            " una serie de monumentos y se seguirá una línea roja marcada en el mapa que se proporcionará.",
        "21/3/2020",
        10,
        3,
        "Español, Inglés",
        "Suecia, Venecia",
        8,
        "assets/sanjuandeavila.png",
        false,
        5,
      ),
      RutaRealizada(
        "Porompompero pero",
        "22993",
        "Esta ruta se llevará a cabo en la localidad de Valdepeñas. Se podrán observar"
            " una serie de monumentos y se seguirá una línea roja marcada en el mapa que se proporcionará.",
        "21/3/2020",
        10,
        3,
        "Español",
        "Suecia, Venecia",
        8,
        "assets/villarrubia.png",
        false,
        5,
      ),
      RutaRealizada(
          "Ruta de Manzanares",
          "12345",
          "Esta ruta se llevará a cabo en la localidad de Valdepeñas. Se podrán observar"
              " una serie de monumentos y se seguirá una línea roja marcada en el mapa que se proporcionará.",
          "21/3/2020",
          10,
          3,
          "Español, Inglés, Alemán",
          "Campo de golf, Ir a vendimiar, A la oliva en pleno diciembre, Ver a DJ Beni",
          8,
          "assets/puertasantamaria.png",
          false,
          2),
      RutaRealizada(
        "Ciudad Real",
        "04826",
        "Esta ruta se llevará a cabo en la localidad de Valdepeñas. Se podrán observar"
            " una serie de monumentos y se seguirá una línea roja marcada en el mapa que se proporcionará.",
        "21/3/2020",
        6,
        5,
        "Español, Inglés, Sueco",
        "Suecia, Venecia",
        8,
        "assets/iglesiavalde.png",
        false,
        4,
      ),
      RutaRealizada(
        "Puerta de Toledo",
        "92883",
        "Esta ruta se llevará a cabo en la localidad de Valdepeñas. Se podrán observar"
            " una serie de monumentos y se seguirá una línea roja marcada en el mapa que se proporcionará.",
        "21/3/2020",
        10,
        3,
        "Español, Inglés",
        "Suecia, Venecia",
        8,
        "assets/sanjuandeavila.png",
        false,
        5,
      ),
      RutaRealizada(
        "Manolo Escobar",
        "22993",
        "Esta ruta se llevará a cabo en la localidad de Valdepeñas. Se podrán observar"
            " una serie de monumentos y se seguirá una línea roja marcada en el mapa que se proporcionará.",
        "21/3/2020",
        10,
        3,
        "Español",
        "Suecia, Venecia",
        8,
        "assets/villarrubia.png",
        false,
        5,
      ),
      RutaRealizada(
          "Ruta del vino y se fue",
          "16328",
          "Esta ruta se llevará a cabo en la localidad de Valdepeñas. Se podrán observar"
              " una serie de monumentos y se seguirá una línea roja marcada en el mapa que se proporcionará.",
          "21/3/2020",
          10,
          3,
          "Español, Inglés, Alemán",
          "Campo de golf, Ir a vendimiar, A la oliva en pleno diciembre, Ver a DJ Beni",
          8,
          "assets/puertasantamaria.png",
          false,
          2),
      RutaRealizada(
        "Valdepeñas distinto",
        "04826",
        "Esta ruta se llevará a cabo en la localidad de Valdepeñas. Se podrán observar"
            " una serie de monumentos y se seguirá una línea roja marcada en el mapa que se proporcionará.",
        "21/3/2020",
        6,
        5,
        "Español, Inglés, Sueco",
        "Suecia, Venecia",
        8,
        "assets/iglesiavalde.png",
        false,
        4,
      ),
      RutaRealizada(
        "Ruta del quijote",
        "92883",
        "Esta ruta se llevará a cabo en la localidad de Valdepeñas. Se podrán observar"
            " una serie de monumentos y se seguirá una línea roja marcada en el mapa que se proporcionará.",
        "21/3/2020",
        10,
        3,
        "Español, Inglés",
        "Suecia, Venecia",
        8,
        "assets/sanjuandeavila.png",
        false,
        5,
      ),
      RutaRealizada(
        "Porompompero pero",
        "22993",
        "Esta ruta se llevará a cabo en la localidad de Valdepeñas. Se podrán observar"
            " una serie de monumentos y se seguirá una línea roja marcada en el mapa que se proporcionará.",
        "21/3/2020",
        10,
        3,
        "Español",
        "Suecia, Venecia",
        8,
        "assets/villarrubia.png",
        false,
        5,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: rutas.length,
        itemBuilder: (context, int item) =>
            new ItemRutasRealizadas(rutas[item]));
  }
}
