import 'package:flutter/material.dart';
import 'package:pr_ipo2/pestanas/proximasrutas.dart';
import 'package:pr_ipo2/pestanas/rutasrealizadas.dart';


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
    bool cond = false;
    int i = 10;
    AlertDialog dialogo = new AlertDialog(
      content: new Text('¿Seguro que deseas salir?\n\n'),
      actions: <Widget>[
        new FlatButton(
            onPressed: () {
              
              Navigator.pop(context);
              //return true;

            },
            child: new Text("Sí")),
        new FlatButton(
            onPressed: () {
              Navigator.pop(context);
              i--;
            },
            child: new Text("No"))
      ],
      
    );
    
    showDialog(context: context, child: dialogo);
    
  }

  @override
  Widget build(BuildContext context) {

    // RUTAS REALIZADAS /////////////////////////////////////////

    final rutasRealizadas = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xff01A0C7),
        child: MaterialButton(

          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            _cambioVentana(context, RutasRealizadas());
          },
          child: Text("RUTAS REALIZADAS",
          
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              )),
        ));

    // PROXIMAS RUTAS /////////////////////////////////////////

    final proximasRutas = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xff01A0C7),
        child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            _cambioVentana(context, ProximasRutas());
          },
          child: Text("PRÓXIMAS RUTAS",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              )),
        ));

    // GUIAS /////////////////////////////////////////

    final guias = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xff01A0C7),
        child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            _cambioVentana(context, RutasRealizadas());
          },
          child: Text("GUÍAS",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              )),
        ));

    // GRUPOS /////////////////////////////////////////

    final grupos = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xff01A0C7),
        child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            _cambioVentana(context, RutasRealizadas());
          },
          child: Text("GRUPOS",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              )),
        ));

    // PROMOCIONES /////////////////////////////////////////

    final promociones = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xff01A0C7),
        child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            _cambioVentana(context, RutasRealizadas());
          },
          child: Text("PROMOCIONES",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              )),
        ));

    // LOGOUT /////////////////////////////////////////

    final logout = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xff01A0C7),
        child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            if(_cerrarVentana(context)){
              Navigator.pop(context);
              
            }
          },
          child: Text("LOGOUT",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              )),
        ));

    // CAMBIAR DATOS /////////////////////////////////////////

      final cambiarDatos = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.orange,
        child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Actualizar datos",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              )),
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
              foto: "assets/bisbal.png"
            ),
            ),

            // BOTON ACTUALIZAR DATOS /////////////////////////////////////////
            new Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 35, 0),
              alignment: Alignment.bottomRight,
              child: cambiarDatos
            ),

            // BOTONES A VENTANAS ///////////////////////////////////////// 
            new Container(
                padding: const EdgeInsets.all(35.0),
                child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      rutasRealizadas, SizedBox(height: 10.0),
                      proximasRutas, SizedBox(height: 10.0),
                      guias, SizedBox(height: 10.0),
                      grupos, SizedBox(height: 10.0),
                      promociones, SizedBox(height: 10.0),
                      logout, SizedBox(height: 10.0),
                    ]))
          ],
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
                  width: 200,
                  height: 200,
                )),
                // NOMBRES DATOS 
                new Container(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 8)),
                          Text(widget.nombre, style: TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline)), 
                          Padding(padding: const EdgeInsets.fromLTRB(0, 15, 0, 8)),
                          Text("DNI : "+widget.dni, style: TextStyle(fontStyle: FontStyle.italic)), 
                          Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                          Text("Email : "+widget.email, style: TextStyle(fontStyle: FontStyle.italic)), 
                          Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                          Text("ID : "+widget.id, style: TextStyle(fontStyle: FontStyle.italic)), 
                          Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8)),
                          Text("Últ. Accs : "+widget.fecha, style: TextStyle(fontStyle: FontStyle.italic))              
                    ]
                  )
                ),
              ],
            )
            ),),
    );
  }
}
