import "package:flutter/material.dart";
import "package:pr_ipo2/objetos/grupo.dart";
import 'package:pr_ipo2/interfaces/DetallesGrupos.dart';

class ItemSeleccionGrupos extends StatefulWidget {
  final Grupo _grupo;

  ItemSeleccionGrupos(this._grupo);

  @override
  _ItemSeleccionGruposState createState() => _ItemSeleccionGruposState();
}

class _ItemSeleccionGruposState extends State<ItemSeleccionGrupos> {
  bool _checkBoxVal = false;
  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      new Divider(height: 8.0, thickness: 1.0, color: Colors.black),
      new CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        title: new Row(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(const Radius.circular(60.0)),
                        color: Colors.transparent,
                        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(widget._grupo.foto)))),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                ),
                Text(
                  widget._grupo.id,
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.start,
            ),
            new Row(
              children: <Widget>[
                Text(
                  widget._grupo.idioma,
                  style: new TextStyle(
                    fontSize: 13.5,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
        onChanged: (bool value) {
          setState(() => this._checkBoxVal = value);
        },
        value: this._checkBoxVal,
      ),
    ]);
  }
}
