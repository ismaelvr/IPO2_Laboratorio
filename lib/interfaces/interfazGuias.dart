import 'package:flutter/material.dart';
import "package:pr_ipo2/interfaces/ItemGuias.dart";
import 'package:pr_ipo2/objetos/guia.dart';

class InterfazGuias extends StatefulWidget {
  @override
  _InterfazGuiasState createState() => _InterfazGuiasState();
}

class _InterfazGuiasState extends State<InterfazGuias> {
  List<Guia> guias;

  @override
  void initState() {
    super.initState();
    guias = <Guia>[
      Guia(
        "Pedro Palencia",
        "75654",
        "pedro@gmail.com",
        10,
        4,
        "Es un señor muy majo. Atiende todas las dudas que se le pregunten. Amplios conocimientos sobre los monumentos de sus rutas.",
        "Español, Inglés, Esperanto",
        "assets/pedro.jpg",
      ),
      Guia(
        "Ismael Vélez",
        "2342",
        "ismaelvr@gmail.com",
        10,
        4,
        "Es un señor muy majo. Atiende todas las dudas que se le pregunten. Amplios conocimientos sobre los monumentos de sus rutas.",
        "Español, Inglés, Esperanto",
        "assets/ismael.jpg",
      ),
      Guia(
        "David Bisbal",
        "7655464",
        "bisbal@gmail.com",
        10,
        4,
        "Es un señor muy majo. Atiende todas las dudas que se le pregunten. Amplios conocimientos sobre los monumentos de sus rutas.",
        "Español, Inglés, Esperanto",
        "assets/bisbal.png",
      ),
      Guia(
        "Vélez Ismael",
        "54678",
        "velez@gmail.com",
        10,
        4,
        "Es un señor muy majo. Atiende todas las dudas que se le pregunten. Amplios conocimientos sobre los monumentos de sus rutas.",
        "Español, Inglés, Esperanto",
        "assets/ismael.jpg",
      ),
      Guia(
        "Palencia Pedro",
        "677687",
        "plasencia@gmail.com",
        10,
        4,
        "Es un señor muy majo. Atiende todas las dudas que se le pregunten. Amplios conocimientos sobre los monumentos de sus rutas.",
        "Español, Inglés, Esperanto",
        "assets/pedro.jpg",
      ),
      Guia(
        "Marco",
        "6768",
        "polo@gmail.com",
        10,
        4,
        "Es un señor muy majo. Atiende todas las dudas que se le pregunten. Amplios conocimientos sobre los monumentos de sus rutas.",
        "Español, Inglés, Esperanto",
        "assets/bisbal.png",
      ),
      Guia(
        "Polo",
        "7897",
        "marco@gmail.com",
        10,
        4,
        "Es un señor muy majo. Atiende todas las dudas que se le pregunten. Amplios conocimientos sobre los monumentos de sus rutas.",
        "Español, Inglés, Esperanto",
        "assets/ismael.jpg",
      ),
      Guia(
        "Popeye",
        "98789",
        "elmarino@gmail.com",
        10,
        4,
        "Es un señor muy majo. Atiende todas las dudas que se le pregunten. Amplios conocimientos sobre los monumentos de sus rutas.",
        "Español, Inglés, Esperanto",
        "assets/bisbal.png",
      ),
      Guia(
        "Paco",
        "8787",
        "natillas@gmail.com",
        10,
        4,
        "Es un señor muy majo. Atiende todas las dudas que se le pregunten. Amplios conocimientos sobre los monumentos de sus rutas.",
        "Español, Inglés, Esperanto",
        "assets/pedro.jpg",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(itemCount: guias.length, itemBuilder: (context, int item) => new ItemGuias(guias[item]));
  }
}
