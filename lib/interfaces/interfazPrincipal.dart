import 'package:flutter/material.dart';

//enum Acciones { si, no }

class InterfazPrincipal extends StatelessWidget {
  final TextStyle style = TextStyle(fontSize: 20.0);

  /*void _cambioVentana(context, nombreVentana) {
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
  */
  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: SingleChildScrollView(
          child: new Center(
            child: new Column(
              children: <Widget>[
                // DATOS USUARIO /////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                ),
                new Center(
                  child: new DatosUsuario(
                      nombre: "David Bisbal",
                      dni: "73526392K",
                      email: "avermaria@gmail.com",
                      id: "012345",
                      fecha: "17/03/2020",
                      foto: "assets/bisbal.png"),
                ),

                Padding(padding: const EdgeInsets.fromLTRB(0, 15, 0, 0)),
                // INFORMACIÓN //
                Text(
                  "Rutas destacadas:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                new Container(
                  margin: EdgeInsets.symmetric(vertical: 15.0),
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 350.0,
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
                        width: 350.0,
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
                        width: 350.0,
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
                        width: 350.0,
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
                Text(
                  "Las mejores promociones:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                new Container(
                  margin: EdgeInsets.symmetric(vertical: 15.0),
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 350.0,
                        child: Center(
                          child: Promociones(
                              nombre: "Promoción navidad",
                              id: "012345",
                              fecha: "17/03/2020",
                              precio: 6,
                              valoracion: 4,
                              foto: "assets/1puesto.png"),
                        ),
                      ),
                      Container(
                        width: 350.0,
                        child: new Center(
                          child: new Promociones(
                              nombre: "Promocion pascuas",
                              id: "987879",
                              fecha: "18/03/2020",
                              precio: 1,
                              valoracion: 1,
                              foto: "assets/2puesto.png"),
                        ),
                      ),
                      Container(
                        width: 350.0,
                        child: new Center(
                          child: new Promociones(
                              nombre: "Promocion san valentin",
                              id: "43424",
                              fecha: "19/03/2020",
                              precio: 80,
                              valoracion: 5,
                              foto: "assets/3puesto.png"),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Guías destacados:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                new Container(
                  margin: EdgeInsets.symmetric(vertical: 15.0),
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 350.0,
                        child: Center(
                          child: GuiasDestacados(
                              nombre: "Ismael Vélez Recio",
                              id: "012345",
                              correo: "isma@gmail.com",
                              idiomas: "Español, inglés",
                              valoracion: 4,
                              foto: "assets/ismael.jpg"),
                        ),
                      ),
                      Container(
                        width: 350.0,
                        child: new Center(
                          child: new GuiasDestacados(
                              nombre: "Pedro Palencia",
                              id: "987879",
                              correo: "pedro@gmail.com",
                              idiomas: "Español, inglés",
                              valoracion: 1,
                              foto: "assets/ismael.jpg"),
                        ),
                      ),
                      Container(
                        width: 350.0,
                        child: new Center(
                          child: new GuiasDestacados(
                              nombre: "Antonio",
                              id: "43424",
                              correo: "antonio@gmail.com",
                              idiomas: "Italiano",
                              valoracion: 5,
                              foto: "assets/ismael.jpg"),
                        ),
                      ),
                      Container(
                        width: 350.0,
                        child: new Center(
                          child: new GuiasDestacados(
                              nombre: "Carmen",
                              id: "7986786",
                              correo: "carmen@gmail.com",
                              idiomas: "Español, portugues",
                              valoracion: 4,
                              foto: "assets/ismael.jpg"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
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

  DatosUsuario({this.nombre, this.dni, this.email, this.id, this.fecha, this.foto});
  @override
  _DatosUsuarioState createState() => _DatosUsuarioState();
}

class _DatosUsuarioState extends State<DatosUsuario> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: new Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        color: Colors.orange,
        child: Container(
            child: new Row(
          children: <Widget>[
            // FOTO
            new Container(
                child: Image(
              image: AssetImage(widget.foto),
              width: 160,
              height: 160,
            )),

            // NOMBRES DATOS
            new Container(
                child: new Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 0)),
              Text(widget.nombre, style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline)),
              Padding(padding: const EdgeInsets.fromLTRB(0, 12, 0, 6)),
              Text("DNI : " + widget.dni,
                  style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white, fontWeight: FontWeight.bold)),
              Padding(padding: const EdgeInsets.fromLTRB(0, 6, 0, 6)),
              Text("Email : " + widget.email,
                  style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white, fontWeight: FontWeight.bold)),
              Padding(padding: const EdgeInsets.fromLTRB(0, 6, 0, 6)),
              Text("ID : " + widget.id,
                  style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white, fontWeight: FontWeight.bold)),
              Padding(padding: const EdgeInsets.fromLTRB(0, 6, 0, 6)),
              Text("Últ. Accs : " + widget.fecha,
                  style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white, fontWeight: FontWeight.bold))
            ])),
          ],
        )),
      ),
    );
  }
}

// RUTAS DESTACADAS

class RutasDestacadas extends StatefulWidget {
  final String nombre;
  final String id;
  final String fecha;
  final int precio;
  final int valoracion;
  final String foto;

  RutasDestacadas({this.nombre, this.id, this.fecha, this.precio, this.valoracion, this.foto});
  @override
  _RutasDestacadasState createState() => _RutasDestacadasState();
}

class _RutasDestacadasState extends State<RutasDestacadas> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 6.0, left: 10),
      child: new Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        color: Color(0xff01A0C7),
        child: Container(
          child: new Column(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Text(widget.nombre,
                  style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline, fontSize: 16)),
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
                      child: new Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                    Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 8)),
                    Text("ID : " + widget.id,
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontStyle: FontStyle.italic)),
                    Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                    Text("Fecha : " + widget.fecha,
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontStyle: FontStyle.italic)),
                    Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                    Text("Precio : " + widget.precio.toString() + "€",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontStyle: FontStyle.italic)),
                    Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                    Text("Valoración : " + widget.valoracion.toString() + "/5",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontStyle: FontStyle.italic))
                  ])),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// PROMOCIONES

class Promociones extends StatefulWidget {
  final String nombre;
  final String id;
  final String fecha;
  final int precio;
  final int valoracion;
  final String foto;

  Promociones({this.nombre, this.id, this.fecha, this.precio, this.valoracion, this.foto});
  @override
  _PromocionesState createState() => _PromocionesState();
}

class _PromocionesState extends State<Promociones> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 6.0, left: 10),
      child: new Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        color: Color(0xff01A0C7),
        child: Container(
          child: new Column(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Text(widget.nombre,
                  style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline, fontSize: 16)),
              new Row(
                children: <Widget>[
                  // FOTO
                  new Container(
                      padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                      child: Image(
                        image: AssetImage(widget.foto),
                        width: 120,
                        height: 120,
                      )),
                  Padding(padding: const EdgeInsets.fromLTRB(10, 0, 5, 0)),
                  // NOMBRES DATOS
                  new Container(
                      child: new Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                    Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 8)),
                    Text("ID : " + widget.id,
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontStyle: FontStyle.italic)),
                    Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                    Text("Fecha : " + widget.fecha,
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontStyle: FontStyle.italic)),
                    Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                    Text("Precio : " + widget.precio.toString() + "€",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontStyle: FontStyle.italic)),
                    Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                    Text("Valoración : " + widget.valoracion.toString() + "/5",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontStyle: FontStyle.italic))
                  ])),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// GUIAS DESTACADOS

class GuiasDestacados extends StatefulWidget {
  final String nombre;
  final String id;
  final String correo;
  final int sueldo;
  final int valoracion;
  final String idiomas;
  final String foto;

  GuiasDestacados({this.nombre, this.id, this.correo, this.sueldo, this.valoracion, this.idiomas, this.foto});
  @override
  _GuiasDestacadosState createState() => _GuiasDestacadosState();
}

class _GuiasDestacadosState extends State<GuiasDestacados> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 6.0, left: 10),
      child: new Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        color: Color(0xff01A0C7),
        child: Container(
          child: new Column(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Text(widget.nombre,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, decoration: TextDecoration.underline)),
              new Row(
                children: <Widget>[
                  // FOTO
                  new Container(
                      padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                      child: Image(
                        image: AssetImage(widget.foto),
                        width: 120,
                        height: 120,
                      )),
                  Padding(padding: const EdgeInsets.fromLTRB(10, 0, 5, 0)),
                  // NOMBRES DATOS
                  new Container(
                      child: new Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                    Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 8)),
                    Text("ID : " + widget.id,
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontStyle: FontStyle.italic)),
                    Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                    Text("Correo : " + widget.correo,
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontStyle: FontStyle.italic)),
                    Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                    Text("Idiomas : " + widget.idiomas,
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontStyle: FontStyle.italic)),
                    Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                    Text("Valoración : " + widget.valoracion.toString() + "/5",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontStyle: FontStyle.italic))
                  ])),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
