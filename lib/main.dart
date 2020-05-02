import 'package:flutter/material.dart';
import 'package:pr_ipo2/pestanas/principal.dart';
import 'package:pr_ipo2/pestanas/proximasrutas.dart';
import 'package:pr_ipo2/pestanas/rutasrealizadas.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TU-RURAL',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Login'),
      routes: <String, WidgetBuilder>{
        RutasRealizadas.nombreRuta: (BuildContext context) => new RutasRealizadas(),
        Principal.nombreRuta: (BuildContext context) => new Principal(),
        ProximasRutas.nombreRuta: (BuildContext context) => new ProximasRutas(),
      }
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontSize: 20.0);
  TextEditingController textFieldController = TextEditingController();

  String _usuario = "";
  String _contrasena = "";

  void _irRutaHome(BuildContext context) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Principal(),
          ));
    } 


  @override
  Widget build(BuildContext context) {
    void _comprobarLogin(_usuario, _contrasena) {
      if (_usuario == "Pedro" && _contrasena == "1234") {
        print("Login correcto");
        _irRutaHome(context);
      } else {
        print("Login incorrecto");
      }
    }

    
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
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          _comprobarLogin(_usuario, _contrasena);
        },
        child: Text("Login",
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
                usuarioField,
                SizedBox(height: 25.0),
                contrasenaField,
                SizedBox(
                  height: 35.0,
                ),
                loginButon,
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
        )
      ),
    );
  }
}
