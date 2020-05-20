import "package:flutter/material.dart";
import "package:pr_ipo2/objetos/rutasProximas.dart";
import 'package:pr_ipo2/interfaces/DetallesRutaProxima.dart';


class ItemRutasProximas extends StatelessWidget {

  // final Ruta _ruta;
  final RutaProxima _ruta;

  ItemRutasProximas(this._ruta);

  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      new Divider(
        height: 8.0,
        thickness: 1.0,
        color: Colors.black
      ),
      new ListTile(
        leading: Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(const Radius.circular(60.0)),
                color: Colors.transparent,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(_ruta.foto)))),
        title: new Row(
          children: <Widget>[
            new Text(
              _ruta.nombre,
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
            new Text(
              _ruta.id,
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
            _ruta.fecha,
            style: new TextStyle(
              fontSize: 15.0,
              color: Colors.grey,
            ),
          ),
          padding: const EdgeInsets.only(top: 5.0),
        ),
        onTap: () {
          
          //_ruta.removeWhere((item) => item.id == '001');

          Route ruta = new MaterialPageRoute(
              builder: (context) => new DetallesRutaProxima(ruta: _ruta));
          Navigator.push(context, ruta);
        },
        /*onLongPress: (){
          
        },*/
      )
    ]);
  }

  
}