import "package:flutter/material.dart";
import "package:pr_ipo2/objetos/promocion.dart";
import 'package:pr_ipo2/interfaces/DetallesGuias.dart';

import 'DetallesPromociones.dart';

class ItemPromocion extends StatelessWidget {
  // final Ruta _ruta;
  final Promocion _promocion;

  ItemPromocion(this._promocion);

  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(bottom: 5),
      ),
      new ListTile(
        leading: Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(const Radius.circular(60.0)),
                color: Colors.transparent,
                image: DecorationImage(fit: BoxFit.cover, image: AssetImage(_promocion.foto)))),
        title: new Row(
          children: <Widget>[
            new Text(
              _promocion.nombre,
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            new Text(
              _promocion.id,
              style: new TextStyle(
                fontSize: 13.5,
                color: Colors.grey,
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
        /*subtitle: new Container(
          child: new Text(
            _promocion.idiomas.toString(),
            style: new TextStyle(
              fontSize: 15.0,
              color: Colors.grey,
            ),
          ),
          padding: const EdgeInsets.only(top: 5.0),
        ),*/
        onTap: () {
          Route ruta = new MaterialPageRoute(builder: (context) => new DetallesPromocion(promocion: _promocion));
          Navigator.push(context, ruta);
        },
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 5),
      ),
      new Divider(height: 8.0, thickness: 1.0, color: Colors.black),
    ]);
  }
}
