import 'package:flutter/material.dart';
import "package:pr_ipo2/interfaces/ItemPromociones.dart";
import 'package:pr_ipo2/objetos/promocion.dart';

class InterfazPromociones extends StatefulWidget {
  @override
  _InterfazPromocionesState createState() => _InterfazPromocionesState();
}

class _InterfazPromocionesState extends State<InterfazPromociones> {
  List<Promocion> promociones;

  @override
  void initState() {
    super.initState();
    promociones = <Promocion>[
      Promocion(
        "Promocion navidad",
        "1232",
        "Ta mu bien",
        "Inglés, Italiano",
        4,
        "assets/prom1.jpg",
      ),
      Promocion(
        "Promocion pascuas",
        "124334",
        "Ta mu bien",
        "Inglés, Italiano",
        4,
        "assets/prom2.png",
      ),
      Promocion(
        "Promocion sam va lentin",
        "434",
        "Ta mu bien",
        "Inglés, Italiano",
        4,
        "assets/prom3.png",
      ),
      Promocion(
        "Promocion jalowin",
        "65443",
        "Ta mu bien",
        "Inglés, Italiano",
        4,
        "assets/prom1.jpg",
      ),
      Promocion(
        "Promocion año nuevo",
        "65464",
        "Ta mu bien",
        "Inglés, Italiano",
        4,
        "assets/prom2.png",
      ),
      Promocion(
        "Promocion año bisiesto",
        "6546",
        "Ta mu bien",
        "Inglés, Italiano",
        4,
        "assets/prom3.png",
      ),
      Promocion(
        "Promocion inserso",
        "543543",
        "Ta mu bien",
        "Inglés, Italiano",
        4,
        "assets/prom1.jpg",
      ),
      Promocion(
        "Promocion navidul",
        "5443",
        "Ta mu bien",
        "Inglés, Italiano",
        4,
        "assets/prom2.png",
      ),
      Promocion(
        "Promocion 3x2",
        "45642",
        "Ta mu bien",
        "Inglés, Italiano",
        4,
        "assets/prom3.png",
      ),
      Promocion(
        "Promocion inserso",
        "543543",
        "Ta mu bien",
        "Inglés, Italiano",
        4,
        "assets/prom1.jpg",
      ),
      Promocion(
        "Promocion navidul",
        "5443",
        "Ta mu bien",
        "Inglés, Italiano",
        4,
        "assets/prom2.png",
      ),
      Promocion(
        "Promocion 3x2",
        "45642",
        "Ta mu bien",
        "Inglés, Italiano",
        4,
        "assets/prom3.png",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: promociones.length, itemBuilder: (context, int item) => new ItemPromocion(promociones[item]));
  }
}
