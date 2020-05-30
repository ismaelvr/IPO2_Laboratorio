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
        "Navidad",
        "1232",
        "Esta promocion cuenta con varias rutas que podrán ser dirigidas por el guía que más le interese a los turistas.",
        "Inglés, Italiano",
        4,
        "assets/prom1.jpg",
      ),
      Promocion(
        "Pascuas",
        "124334",
        "Esta promocion cuenta con varias rutas que podrán ser dirigidas por el guía que más le interese a los turistas.",
        "Inglés, Italiano",
        4,
        "assets/prom2.png",
      ),
      Promocion(
        "San valentin",
        "434",
        "Esta promocion cuenta con varias rutas que podrán ser dirigidas por el guía que más le interese a los turistas.",
        "Inglés, Italiano",
        4,
        "assets/prom3.png",
      ),
      Promocion(
        "Halloween",
        "65443",
        "Esta promocion cuenta con varias rutas que podrán ser dirigidas por el guía que más le interese a los turistas.",
        "Inglés, Italiano",
        4,
        "assets/prom1.jpg",
      ),
      Promocion(
        "Año nuevo",
        "65464",
        "Esta promocion cuenta con varias rutas que podrán ser dirigidas por el guía que más le interese a los turistas.",
        "Inglés, Italiano",
        4,
        "assets/prom2.png",
      ),
      Promocion(
        "Año nuevo chino",
        "6546",
        "Esta promocion cuenta con varias rutas que podrán ser dirigidas por el guía que más le interese a los turistas.",
        "Inglés, Italiano",
        4,
        "assets/prom3.png",
      ),
      Promocion(
        "Inserso",
        "543543",
        "Esta promocion cuenta con varias rutas que podrán ser dirigidas por el guía que más le interese a los turistas.",
        "Inglés, Italiano",
        4,
        "assets/prom1.jpg",
      ),
      Promocion(
        "Península",
        "5443",
        "Esta promocion cuenta con varias rutas que podrán ser dirigidas por el guía que más le interese a los turistas.",
        "Inglés, Italiano",
        4,
        "assets/prom2.png",
      ),
      Promocion(
        "3x2",
        "45642",
        "Esta promocion cuenta con varias rutas que podrán ser dirigidas por el guía que más le interese a los turistas.",
        "Inglés, Italiano",
        4,
        "assets/prom3.png",
      ),
      Promocion(
        "Inserso 2",
        "543543",
        "Esta promocion cuenta con varias rutas que podrán ser dirigidas por el guía que más le interese a los turistas.",
        "Inglés, Italiano",
        4,
        "assets/prom1.jpg",
      ),
      Promocion(
        "Hacendado",
        "5443",
        "Esta promocion cuenta con varias rutas que podrán ser dirigidas por el guía que más le interese a los turistas.",
        "Inglés, Italiano",
        4,
        "assets/prom2.png",
      ),
      Promocion(
        "Oferta 3x2",
        "45642",
        "Esta promocion cuenta con varias rutas que podrán ser dirigidas por el guía que más le interese a los turistas.",
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
