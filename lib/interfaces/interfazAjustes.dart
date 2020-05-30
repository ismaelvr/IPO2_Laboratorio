import 'package:flutter/material.dart';
import 'package:pr_ipo2/objetos/rutasProximas.dart';

class InterfazAjustes extends StatefulWidget {
  final ValueChanged<ListView> onProxRutasChanged;

  const InterfazAjustes({Key key, this.onProxRutasChanged}) : super(key: key);
  @override
  _InterfazAjustesState createState() => _InterfazAjustesState();
}

class _InterfazAjustesState extends State<InterfazAjustes> {
  String _currentFuente;
  String _currentColor;

  List _fuentes = ["Comic Sans", "Arial", "Calibri", "Time New Roman"];
  List _colores = ["Naranja", "Rojo", "Azul", "Rosa", "Verde", "Amarillo"];

  List<DropdownMenuItem<String>> _dropDownMenuItemsFuente;
  List<DropdownMenuItem<String>> _dropDownMenuItemsColor;

  @override
  void initState() {
    _dropDownMenuItemsFuente = getDropDownMenuItemsFuente();
    _dropDownMenuItemsColor = getDropDownMenuItemsColor();

    _currentFuente = _dropDownMenuItemsFuente[0].value;
    _currentColor = _dropDownMenuItemsColor[0].value;

    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItemsFuente() {
    List<DropdownMenuItem<String>> items = new List();
    for (String fuente in _fuentes) {
      items.add(new DropdownMenuItem(value: fuente, child: new Text(fuente)));
    }
    return items;
  }

  List<DropdownMenuItem<String>> getDropDownMenuItemsColor() {
    List<DropdownMenuItem<String>> items = new List();
    for (String color in _colores) {
      items.add(new DropdownMenuItem(value: color, child: new Text(color)));
    }
    return items;
  }

  List<RutaProxima> rutas;
  bool _switchVal = true;
  double _slider2Val = 10.0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 15, left: 20, right: 40),
      children: <Widget>[
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Modo oscuro", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Center(
              child: Switch(
                onChanged: (bool value) {
                  setState(() => this._switchVal = value);
                },
                value: this._switchVal,
              ),
            ),
          ],
        ),
        Divider(),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Color de la app", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            new DropdownButton(
              value: _currentColor,
              items: _dropDownMenuItemsColor,
              onChanged: changedDropDownItemColor,
            )
          ],
        ),
        Divider(),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Tamaño del texto", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Slider(
                value: _slider2Val,
                min: 8.0,
                max: 20.0,
                divisions: 12,
                label: '${_slider2Val.round()}',
                onChanged: (double value) {
                  setState(() => _slider2Val = value);
                }),
          ],
        ),
        Divider(),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Fuente del texto", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            new DropdownButton(
              value: _currentFuente,
              items: _dropDownMenuItemsFuente,
              onChanged: changedDropDownItemFuente,
            )
          ],
        ),
      ],
    );
  }

  void changedDropDownItemFuente(String selectedFuente) {
    setState(() {
      _currentFuente = selectedFuente;
    });
  }

  void changedDropDownItemColor(String selectedColor) {
    setState(() {
      _currentColor = selectedColor;
    });
  }
}
