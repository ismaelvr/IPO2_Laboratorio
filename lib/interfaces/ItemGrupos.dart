import "package:flutter/material.dart";
import "package:pr_ipo2/objetos/grupo.dart";
import 'package:pr_ipo2/interfaces/DetallesGrupos.dart';

class ItemGrupos extends StatelessWidget {
  // final Ruta _ruta;
  final Grupo _grupo;

  ItemGrupos(this._grupo);

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
                image: DecorationImage(fit: BoxFit.cover, image: AssetImage(_grupo.foto)))),
        title: new Row(
          children: <Widget>[
            new Text(
              _grupo.id,
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
            new Text(
              _grupo.tamano.toString() + " personas",
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
            _grupo.idioma,
            style: new TextStyle(
              fontSize: 15.0,
              color: Colors.grey,
            ),
          ),
          padding: const EdgeInsets.only(top: 5.0),
        ),
        onTap: () {
          Route ruta = new MaterialPageRoute(builder: (context) => new DetallesGrupos(grupo: _grupo));
          Navigator.push(context, ruta);
        },
        /*onLongPress: (){
          
        },*/
      )
    ]);
  }
}
