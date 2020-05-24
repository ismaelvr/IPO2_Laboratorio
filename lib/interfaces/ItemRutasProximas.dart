import "package:flutter/material.dart";
import "package:pr_ipo2/objetos/rutasProximas.dart";
import 'package:pr_ipo2/interfaces/DetallesRutaProxima.dart';

class ItemRutasProximas extends StatefulWidget {
  // final Ruta _ruta;
  final RutaProxima _ruta;
  ItemRutasProximas(this._ruta);

  @override
  _ItemRutasProximasState createState() => _ItemRutasProximasState();
}

class _ItemRutasProximasState extends State<ItemRutasProximas> {
  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      new Divider(height: 8.0, thickness: 1.0, color: Colors.black),
      new ListTile(
        selected: widget._ruta.isSelected,
        leading: Container(
            //color: widget._ruta.isSelected ? Colors.red : null,
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(const Radius.circular(60.0)),
                color: Colors.transparent,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(widget._ruta.foto)))),
        title: new Row(
          children: <Widget>[
            new Text(
              widget._ruta.nombre,
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
            new Text(
              widget._ruta.id,
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
            widget._ruta.fecha,
            style: new TextStyle(
              fontSize: 15.0,
              color: Colors.grey,
            ),
          ),
          padding: const EdgeInsets.only(top: 5.0),
        ),
        onTap: () {
          //_ruta.removeWhere((item) => item.id == '001');
          if (widget._ruta.isSelected) {
            widget._ruta.isSelected = false;
          } else {
            Route ruta = new MaterialPageRoute(
                builder: (context) =>
                    new DetallesRutaProxima(ruta: widget._ruta));
            Navigator.push(context, ruta);
          }
        },
        onLongPress: () {
          /*setState(() {
            widget._ruta.isSelected = true;
            print(widget._ruta.isSelected);
          });*/
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 100,
            width: 100,
            child: PopupMenuButton(
              child: FlutterLogo(),
              itemBuilder: (context) {
                return <PopupMenuItem>[
                  new PopupMenuItem(child: Text('Delete'))
                ];
              },
            ),
          );
        },
      )
    ]);
  }
}
