import 'package:flutter/material.dart';
import "package:pr_ipo2/interfaces/ItemGrupos.dart";
import 'package:pr_ipo2/objetos/grupo.dart';

class InterfazGrupos extends StatefulWidget {
  @override
  _InterfazGruposState createState() => _InterfazGruposState();
}

class _InterfazGruposState extends State<InterfazGrupos> {
  List<Grupo> Grupos;

  @override
  void initState() {
    super.initState();
    Grupos = <Grupo>[
      Grupo(
        "1234",
        ["Silla de ruedas", "No se"],
        ["Furbol"],
        5,
        "Español",
        "assets/ismael.jpg",
      ),
      Grupo(
        "1234",
        ["Silla de ruedas"],
        ["Furbol"],
        5,
        "Español",
        "assets/ismael.jpg",
      ),
      Grupo(
        "1234",
        ["Silla de ruedas"],
        ["Furbol"],
        5,
        "Español",
        "assets/ismael.jpg",
      ),
      Grupo(
        "1234",
        ["Silla de ruedas"],
        ["Furbol"],
        5,
        "Español",
        "assets/ismael.jpg",
      ),
      Grupo(
        "1234",
        ["Silla de ruedas"],
        ["Furbol"],
        5,
        "Español",
        "assets/ismael.jpg",
      ),
      Grupo(
        "1234",
        ["Silla de ruedas"],
        ["Furbol"],
        5,
        "Español",
        "assets/ismael.jpg",
      ),
      Grupo(
        "1234",
        ["Silla de ruedas"],
        ["Furbol"],
        5,
        "Español",
        "assets/ismael.jpg",
      ),
      Grupo(
        "1234",
        ["Silla de ruedas"],
        ["Furbol"],
        5,
        "Español",
        "assets/ismael.jpg",
      ),
      Grupo(
        "1234",
        ["Silla de ruedas"],
        ["Furbol"],
        5,
        "Español",
        "assets/ismael.jpg",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Grupos.length,
        itemBuilder: (context, int item) => new ItemGrupos(Grupos[item]));
  }
}
