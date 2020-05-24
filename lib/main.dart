import 'package:flutter/material.dart';
import 'package:pr_ipo2/BaseAuth.dart';
import 'package:pr_ipo2/pestanas/guias.dart';
import 'package:pr_ipo2/pestanas/grupos.dart';
import 'package:pr_ipo2/pestanas/principal.dart';
import 'package:pr_ipo2/pestanas/proximasrutas.dart';
import 'package:pr_ipo2/pestanas/rutasrealizadas.dart';
import 'package:pr_ipo2/pestanas/register.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        title: 'TU-RURAL',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        /*darkTheme: ThemeData(
          brightness: Brightness.dark
        ),*/
        home: MyHomePage(title: 'Login'),
        routes: <String, WidgetBuilder>{
          RutasRealizadas.nombreRuta: (BuildContext context) =>
              new RutasRealizadas(),
          Principal.nombreRuta: (BuildContext context) => new Principal(),
          ProximasRutas.nombreRuta: (BuildContext context) =>
              new ProximasRutas(),
          Guias.nombreRuta: (BuildContext context) => new Guias(),
          Grupos.nombreRuta: (BuildContext context) => new Grupos(),
        });
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
  TextEditingController contrasenaController = TextEditingController();
  TextEditingController usuarioController = TextEditingController();

  final Auth _auth = Auth();
  final _formKey = GlobalKey<FormState>();
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
      controller: usuarioController,
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
      controller: contrasenaController,
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
            dynamic result =
                await _auth.signInWithEmailAndPassword(_usuario, _contrasena);
            usuarioController.clear();
            contrasenaController.clear();
            if (result == null) {
              setState(() {
                AlertDialog dialogo = new AlertDialog(
                  content: new Text('Login incorrecto, subnormal'),
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
              _irRutaHome(context);
            }
          }
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final registerButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          _irRutaRegister(context);
        },
        child: Text("Register",
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
                registerButon,
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

  void _irRutaHome(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Principal(),
        ));
  }
}
