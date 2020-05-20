import 'package:flutter/material.dart';
import 'package:toast/toast.dart';


class Register extends StatefulWidget {
  Register({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextStyle style = TextStyle(fontSize: 20.0);
  TextEditingController textFieldController = TextEditingController();

  String _usuario = "";
  String _contrasena = "";

  void _irRutaRegister(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Register(),
        ));
  }

  @override
  Widget build(BuildContext context) {
   /* void _comprobarLogin(_usuario, _contrasena) {
      if (_usuario == "Pedro" && _contrasena == "1234") {
        print("Login correcto");
        _irRutaHome(context);
      } else {
        print("Login incorrecto");
      }
    }
*/
    final usuarioField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Usuario",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (String data) {
        _usuario = data;
      },
    );

    final contrasenaField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Contraseña",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (String data) {
        _contrasena = data;
      },
    );
    final registerButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Toast.show("¡¡REGISTRADO CON ÉXITO!!", context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM);
          Navigator.pop(context);
          //_irRutaRegister(context);
         },
        child: Text("Registrar",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final cancelButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("Cancelar",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    

    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
          child: SingleChildScrollView(
        child: Container(
          color: Colors.orange,
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 225.0,
                  child: Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(padding: const EdgeInsets.only(bottom: 20.0)),
                SizedBox(height: 45.0),
                Text("Introduzca un nombre de usuario:",
                
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold
              )),
               Padding(padding: const EdgeInsets.only(bottom: 6.0)),
                usuarioField,
                SizedBox(height: 8.0),
                Text("Introduzca una contraseña:",
                
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold
              )),
               Padding(padding: const EdgeInsets.only(bottom: 6.0)),
                contrasenaField,
                SizedBox(
                  height: 35.0,
                ),
                registerButon,
                Padding(padding: const EdgeInsets.only(bottom: 15)),
                cancelButon,
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}