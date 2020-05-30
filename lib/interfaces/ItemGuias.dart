import "package:flutter/material.dart";
import "package:pr_ipo2/objetos/guia.dart";
import 'package:pr_ipo2/interfaces/DetallesGuias.dart';

class ItemGuias extends StatelessWidget {
  final Guia _guia;

  ItemGuias(this._guia);

  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      new Divider(height: 8.0, thickness: 1.0, color: Colors.black),
      new ListTile(
        leading: Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(const Radius.circular(60.0)),
                color: Colors.transparent,
                image: DecorationImage(fit: BoxFit.cover, image: AssetImage(_guia.foto)))),
        title: new Row(
          children: <Widget>[
            new Text(
              _guia.nombre,
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
            new Text(
              _guia.id,
              style: new TextStyle(
                fontSize: 13.5,
                color: Colors.grey,
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
        subtitle: new Container(
          child: new Text(
            _guia.correo,
            style: new TextStyle(
              fontSize: 15.0,
              color: Colors.grey,
            ),
          ),
          padding: const EdgeInsets.only(top: 5.0),
        ),
        onTap: () {
          Route ruta = new MaterialPageRoute(builder: (context) => new DetallesGuias(guia: _guia));
          Navigator.push(context, ruta);
        },
        /*onLongPress: (){
          
        },*/
      )
    ]);
  }
}
