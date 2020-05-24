import 'package:flutter/material.dart';

//enum Acciones { si, no }

class InterfazPrincipal extends StatelessWidget {
  TextStyle style = TextStyle(fontSize: 20.0);

  void _cambioVentana(context, nombreVentana) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => nombreVentana,
        ));
  }

  bool _cerrarVentana(BuildContext context) {
    AlertDialog dialogo = new AlertDialog(
      content: new Text('¿Seguro que deseas salir?\n\n'),
      actions: <Widget>[
        new FlatButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: new Text("Sí")),
        new FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: new Text("No"))
      ],
    );

    showDialog(context: context, child: dialogo);
  }

  @override
  Widget build(BuildContext context) {
    // LOGOUT /////////////////////////////////////////

    final logout = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xff01A0C7),
        child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            if (_cerrarVentana(context)) {
              Navigator.pop(context);
            }
          },
          child: Text("LOGOUT",
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ));

    return new Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: new Center(
        child: new Column(
          children: <Widget>[
            // DATOS USUARIO /////////////////////////////////////////
            new Center(
              child: new DatosUsuario(
                  nombre: "David Bisbal",
                  dni: "73526392K",
                  email: "avermaria@hotmail.com",
                  id: "012345",
                  fecha: "17/03/2020",
                  foto: "assets/bisbal.png"),
            ),

            // LOGOUT //
            new Container(
                padding: const EdgeInsets.fromLTRB(35, 15, 35, 0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      logout,
                      SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      ),
                    ])),

            // INFORMACIÓN //
            Text(
              "Rutas destacadas:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            new Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 325.0,
                    child: Center(
                      child: RutasDestacadas(
                          nombre: "Ruta del vino y se fue",
                          id: "012345",
                          fecha: "17/03/2020",
                          precio: 6,
                          valoracion: 4,
                          foto: "assets/iglesiavalde.png"),
                    ),
                  ),
                  Container(
                    width: 325.0,
                    child: new Center(
                      child: new RutasDestacadas(
                          nombre: "Ruta del Quijote",
                          id: "987879",
                          fecha: "18/03/2020",
                          precio: 1,
                          valoracion: 1,
                          foto: "assets/sanjuandeavila.png"),
                    ),
                  ),
                  Container(
                    width: 325.0,
                    child: new Center(
                      child: new RutasDestacadas(
                          nombre: "Valdepeñas es vida",
                          id: "43424",
                          fecha: "19/03/2020",
                          precio: 80,
                          valoracion: 5,
                          foto: "assets/villarrubia.png"),
                    ),
                  ),
                  Container(
                    width: 325.0,
                    child: new Center(
                      child: new RutasDestacadas(
                          nombre: "Caminante no hay camino",
                          id: "7986786",
                          fecha: "20/03/2020",
                          precio: 63,
                          valoracion: 4,
                          foto: "assets/puertasantamaria.png"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// RUTAS DESTACDAS

class RutasDestacadas extends StatefulWidget {
  final String nombre;
  final String id;
  final String fecha;
  final int precio;
  final int valoracion;
  final String foto;

  RutasDestacadas(
      {this.nombre,
      this.id,
      this.fecha,
      this.precio,
      this.valoracion,
      this.foto});
  @override
  _RutasDestacadasState createState() => _RutasDestacadasState();
}

class _RutasDestacadasState extends State<RutasDestacadas> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 6.0, left: 10),
      child: new Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        color: Color(0xff01A0C7),
        child: Container(
          child: new Column(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Text(widget.nombre,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline)),
              new Row(
                children: <Widget>[
                  // FOTO
                  new Container(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Image(
                        image: AssetImage(widget.foto),
                        width: 150,
                        height: 150,
                      )),
                  Padding(padding: const EdgeInsets.fromLTRB(10, 0, 5, 0)),
                  // NOMBRES DATOS
                  new Container(
                      child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                        Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 8)),
                        Text("ID : " + widget.id,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontStyle: FontStyle.italic)),
                        Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                        Text("Fecha : " + widget.fecha,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontStyle: FontStyle.italic)),
                        Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                        Text("Precio : " + widget.precio.toString() + "€",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontStyle: FontStyle.italic)),
                        Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                        Text(
                            "Valoración : " +
                                widget.valoracion.toString() +
                                "/5",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontStyle: FontStyle.italic))
                      ])),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// DATOS DEL USUARIO /////////////////////

class DatosUsuario extends StatefulWidget {
  final String nombre;
  final String dni;
  final String email;
  final String id;
  final String fecha;
  final String foto;

  DatosUsuario(
      {this.nombre, this.dni, this.email, this.id, this.fecha, this.foto});
  @override
  _DatosUsuarioState createState() => _DatosUsuarioState();
}

class _DatosUsuarioState extends State<DatosUsuario> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 6.0),
      child: new Card(
        child: Container(
            child: new Row(
          children: <Widget>[
            // FOTO
            new Container(
                child: Image(
              image: AssetImage(widget.foto),
              width: 180,
              height: 180,
            )),
            // NOMBRES DATOS
            new Container(
                child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 8)),
                  Text(widget.nombre,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline)),
                  Padding(padding: const EdgeInsets.fromLTRB(0, 15, 0, 8)),
                  Text("DNI : " + widget.dni,
                      style: TextStyle(fontStyle: FontStyle.italic)),
                  Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                  Text("Email : " + widget.email,
                      style: TextStyle(fontStyle: FontStyle.italic)),
                  Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                  Text("ID : " + widget.id,
                      style: TextStyle(fontStyle: FontStyle.italic)),
                  Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                  Text("Últ. Accs : " + widget.fecha,
                      style: TextStyle(fontStyle: FontStyle.italic))
                ])),
          ],
        )),
      ),
    );
  }
}
