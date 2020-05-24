import 'package:flutter/material.dart';
import '../BaseAuth.dart';

class Register extends StatefulWidget {
  Register({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final Auth _auth = Auth();
  //String error = '';
  final _formKey = GlobalKey<FormState>();
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
    final usuarioField = TextFormField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Usuario",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      validator: (val) => val.isEmpty ? 'Debes introducir un email' : null,
      onChanged: (val) {
        setState(() => _usuario = val);
      },
    );
    final contrasenaField = TextFormField(
      obscureText: true,
      validator: (val) => val.length < 6
          ? 'La contraseña debe tener más de 6 caracteres'
          : null,
      style: style,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Contraseña",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (val) {
        setState(() => _contrasena = val);
      },
    );

    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async {
          if (_formKey.currentState.validate()) {
            AlertDialog dialogo = new AlertDialog(
              content: new Text('Cuenta creada correctamente.'),
              actions: <Widget>[
                new FlatButton(
                    onPressed: () async {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    child: new Text("Ok")),
              ],
            );

            showDialog(context: context, child: dialogo);
            dynamic result = await _auth.signUp(_usuario, _contrasena);
            if (result == null) {
              setState(() {
                AlertDialog dialogo = new AlertDialog(
                  content: new Text('No se ha podido crear la cuenta.'),
                  actions: <Widget>[
                    new FlatButton(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        child: new Text("Ok")),
                  ],
                );

                showDialog(context: context, child: dialogo);
              });
            } else {
              //_irRutaHome(context);
            }
          }
        },
        child: Text("Login",
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
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20.0),
                      usuarioField,
                      SizedBox(height: 20.0),
                      contrasenaField,
                      SizedBox(height: 20.0),
                    ],
                  ),
                ),
                loginButon,
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

  /*void _irRutaHome(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Principal(),
        ));
  }*/
}
