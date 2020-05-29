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
        "Ismael Vélez",
        "1232",
        "ismaelvr@gmail.com",
        10,
        4,
        "Es un señor muy majo",
        "Español, Inglés, Esperanto",
        "assets/ismael.jpg",
      ),
      Guia(
        "Ismael NoVélez",
        "1232",
        "ismaelvr@gmail.com",
        10,
        4,
        "Es un señor muy majo",
        "Español, Inglés, Esperanto",
        "assets/ismael.jpg",
      ),
      Guia(
        "Ismael Vélez 2",
        "1232",
        "ismaelvr@gmail.com",
        10,
        4,
        "Es un señor muy majo",
        "Español, Inglés, Esperanto",
        "assets/ismael.jpg",
      ),
      Guia(
        "Vélez Ismael",
        "1232",
        "ismaelvr@gmail.com",
        10,
        4,
        "Es un señor muy majo",
        "Español, Inglés, Esperanto",
        "assets/ismael.jpg",
      ),
      Guia(
        "zeléV leamsI",
        "1232",
        "ismaelvr@gmail.com",
        10,
        4,
        "Es un señor muy majo",
        "Español, Inglés, Esperanto",
        "assets/ismael.jpg",
      ),
      Guia(
        "Marco",
        "1232",
        "ismaelvr@gmail.com",
        10,
        4,
        "Es un señor muy majo",
        "Español, Inglés, Esperanto",
        "assets/ismael.jpg",
      ),
      Guia(
        "Polo",
        "1232",
        "ismaelvr@gmail.com",
        10,
        4,
        "Es un señor muy majo",
        "Español, Inglés, Esperanto",
        "assets/ismael.jpg",
      ),
      Guia(
        "Tengo hambre",
        "1232",
        "ismaelvr@gmail.com",
        10,
        4,
        "Es un señor muy majo",
        "Español, Inglés, Esperanto",
        "assets/ismael.jpg",
      ),
      Guia(
        "Stal Inpito",
        "1232",
        "ismaelvr@gmail.com",
        10,
        4,
        "Es un señor muy majo",
        "Español, Inglés, Esperanto",
        "assets/ismael.jpg",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: guias.length,
        itemBuilder: (context, int item) => new ItemGuias(guias[item]));
  }
}
