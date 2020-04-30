import 'package:flutter/material.dart';

class VotoDirecto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MiCardStateful(
              titulo: "Me gusta",
              color: Colors.greenAccent,
              datosIcono: Icons.thumb_up,
            ),
            new MiCardStateful(
                titulo: "No me gusta",
                color: Colors.redAccent,
                datosIcono: Icons.thumb_down),
          ],
        ),
      ),
    );
  }
}

class MiCardStateful extends StatefulWidget {
// Propiedades estáticas
  final String titulo;
  final IconData datosIcono;
  final num tamanyoIcono;
  final Color color;
// Constructor
  MiCardStateful(
      {this.titulo, this.datosIcono, this.tamanyoIcono = 40.0, this.color});
  @override
  _MiCardStatefulState createState() => _MiCardStatefulState();
}

class _MiCardStatefulState extends State<MiCardStateful> {
//Propiedades dinámicas:
  num _contador = 0;
  void _incrementContador() {
    setState(() {
      _contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 6.0),
      child: new Card(
          child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Icon(widget.datosIcono,
                      color: widget.color, size: widget.tamanyoIcono),
                  Padding(
                    // padding entre boton e icono
                    padding: EdgeInsets.all(6.0),
                  ),
                  RaisedButton(
                    child: Text(
                      widget.titulo,
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    onPressed: _incrementContador,
                    color: widget.color,
                    padding: EdgeInsets.all(16.0), // padding interno del botón
                  ),
                  Padding(
                    padding: EdgeInsets.all(6.0),
                  ),
                  Text(_contador.toString(),
                      style: TextStyle(
                        fontSize: 18.0,
                      )), // Otra manera: Text('$_contador')
                ],
              ))),
    );
  }
}
