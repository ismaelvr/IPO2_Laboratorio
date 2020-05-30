import 'package:flutter/material.dart';
import "package:pr_ipo2/interfaces/ItemGrupos.dart";
import 'package:pr_ipo2/objetos/grupo.dart';

class InterfazGrupos extends StatefulWidget {
  @override
  _InterfazGruposState createState() => _InterfazGruposState();
}

class _InterfazGruposState extends State<InterfazGrupos> {
  List<Grupo> grupos;

  @override
  void initState() {
    super.initState();
    grupos = <Grupo>[
      Grupo(
        "1234",
        "Silla de ruedas, patinete",
        "Furbol",
        9,
        "Español, Inglés",
        "assets/turistas1.jpg",
      ),
      Grupo(
        "54534",
        "Silla de ruedas",
        "Furbol",
        19,
        "Polaco",
        "assets/turistas2.jpg",
      ),
      Grupo(
        "154564",
        "Silla de ruedas",
        "Furbol",
        7,
        "Italiano",
        "assets/turistas3.jpg",
      ),
      Grupo(
        "64564",
        "Silla de ruedas",
        "Furbol",
        13,
        "Español",
        "assets/turistas1.jpg",
      ),
      Grupo(
        "5435464",
        "Silla de ruedas",
        "Furbol",
        17,
        "Portugues",
        "assets/turistas2.jpg",
      ),
      Grupo(
        "6468",
        "Silla de ruedas",
        "Furbol",
        7,
        "Español",
        "assets/turistas3.jpg",
      ),
      Grupo(
        "3113",
        "Silla de ruedas",
        "Furbol",
        5,
        "Español",
        "assets/turistas1.jpg",
      ),
      Grupo(
        "5346",
        "Silla de ruedas",
        "Furbol",
        12,
        "Inglés",
        "assets/turistas2.jpg",
      ),
      Grupo(
        "68464",
        "Silla de ruedas",
        "Furbol",
        8,
        "Italiano",
        "assets/turistas3.jpg",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(itemCount: grupos.length, itemBuilder: (context, int item) => new ItemGrupos(grupos[item]));
  }
}
