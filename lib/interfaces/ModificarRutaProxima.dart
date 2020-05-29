import "package:flutter/material.dart";
import 'package:pr_ipo2/objetos/rutasProximas.dart';

class ModificarRutaProxima extends StatefulWidget {
  final RutaProxima rutaProxima;
  ModificarRutaProxima(this.rutaProxima);
  @override
  _ModificarRutaProximaState createState() => _ModificarRutaProximaState();
}

class _ModificarRutaProximaState extends State<ModificarRutaProxima> {
  TextStyle style = TextStyle(fontSize: 20.0);
  TextEditingController idController = TextEditingController(text: "dsd");
  TextEditingController restriccionesController = TextEditingController();
  TextEditingController interesesController = TextEditingController();
  TextEditingController tamanoController = TextEditingController();
  TextEditingController idiomaController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  String _nombre = "";
  String _id = "";
  String _descripcion = "";
  String _fecha = "";
  int _precio = 0;
  double _duracion = 0.0;
  String _idiomas = "";
  String _lugaresinteres = "";
  int _plazas = 0;
  String _foto = "/assets/addImage.png"; //comorl?

  @override
  Widget build(BuildContext context) {
    void _alertRutaProximaModificada(BuildContext context) {
      AlertDialog dialogo = new AlertDialog(
        content: new Text('Ruta modificada correctamente'),
        actions: <Widget>[
          new FlatButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: new Text("OK")),
        ],
      );
      showDialog(context: context, child: dialogo);
    }

    final nombreField = TextFormField(
      initialValue: widget.rutaProxima.nombre,
      //controller: nombreController,
      obscureText: false,
      style: style,
      validator: (val) => val.isEmpty ? 'Debes introducir un nombre' : null,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Nombre de la ruta",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (val) {
        setState(() => _id = val);
      },
    );
    final idField = TextFormField(
      initialValue: widget.rutaProxima.id,
      // controller: idController,
      obscureText: false,
      style: style,
      validator: (val) => val.isEmpty ? 'Debes introducir un ID' : null,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "ID",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (val) {
        setState(() => _id = val);
      },
    );
    final descripcionField = TextFormField(
      minLines: 1,
      maxLines: 5,
      initialValue: widget.rutaProxima.descripcion,
      //controller: descripcionController,
      obscureText: false,
      style: style,
      validator: (val) => val.isEmpty ? 'Debes introducir una descripción' : null,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Descripción",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (val) {
        setState(() => _id = val);
      },
    );
    final fechaField = TextFormField(
      initialValue: widget.rutaProxima.fecha,
      //controller: fechaController,
      obscureText: false,
      style: style,
      validator: (val) => val.isEmpty ? 'Debes introducir una fecha' : null,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Fecha",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (val) {
        setState(() => _id = val);
      },
    );
    final precioField = TextFormField(
      initialValue: widget.rutaProxima.precio.toString(),
      //controller: precioController,
      obscureText: false,
      style: style,
      validator: (val) => val.isEmpty ? 'Debes introducir un precio' : null,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Precio",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (val) {
        setState(() => _id = val);
      },
    );
    final duracionField = TextFormField(
      initialValue: widget.rutaProxima.duracion.toString(),
      //controller: duracionController,
      style: style,
      validator: (val) => val.isEmpty ? 'Debes introducir una duración' : null,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Duración",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (val) {
        setState(() => _duracion = val as double);
      },
    );
    final idiomasField = TextFormField(
      initialValue: widget.rutaProxima.idiomas,
      //controller: idiomasController,
      obscureText: false,
      style: style,
      validator: (val) => val.isEmpty ? 'Debes introducir los idiomas' : null,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Idiomas",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (val) {
        setState(() => _idiomas = val);
      },
    );
    final plazasField = TextFormField(
      initialValue: widget.rutaProxima.plazas.toString(),
      //controller: plazasController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Número de plazas",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      validator: (val) => val.isEmpty ? 'Debes introducir un valor' : null,
      onChanged: (val) {
        setState(() => _plazas = val as int);
      },
    );
    final lugintField = TextFormField(
      initialValue: widget.rutaProxima.lugaresInteres,
      //controller: lugintController,
      obscureText: false,
      style: style,
      validator: (val) => val.isEmpty ? 'Debes introducir lugares de interes' : null,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Lugares de interes",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (val) {
        setState(() => _lugaresinteres = val);
      },
    );

    final modificarButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async {
          if (_formKey.currentState.validate()) {
            /*  ProximasRutas RutaProxima = new ProximasRutas(
                _id, _restricciones, _intereses, _tamano, _idioma, _foto);*/
            _alertRutaProximaModificada(context);
          }
        },
        child: Text("Modificar RutaProxima",
            textAlign: TextAlign.center, style: style.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
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
            textAlign: TextAlign.center, style: style.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.orange,
          title: new Text("Modificar grupo"),
        ),
        body: new Container(
            padding: const EdgeInsets.only(top: 6.0),
            child: SingleChildScrollView(
              child: new Card(
                child: Container(
                    padding: const EdgeInsets.all(10),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        // FOTO
                        new Container(
                            margin: const EdgeInsets.fromLTRB(70, 0, 70, 0),
                            //padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(width: 2.0, color: Colors.grey),
                                left: BorderSide(width: 2.0, color: Colors.grey),
                                right: BorderSide(width: 2.0, color: Colors.grey),
                                bottom: BorderSide(width: 2.0, color: Colors.grey),
                              ),
                            ),
                            child: Image(
                              image: AssetImage(widget.rutaProxima.foto),
                              width: 150,
                              height: 150,
                            )),
                        // NOMBRES DATOS
                        new Container(
                            child: new SingleChildScrollView(
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: new Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                                  Form(
                                    key: _formKey,
                                    child: Column(
                                      children: <Widget>[
                                        SizedBox(height: 15.0),
                                        nombreField,
                                        SizedBox(height: 15.0),
                                        idField,
                                        SizedBox(height: 15.0),
                                        descripcionField,
                                        SizedBox(height: 15.0),
                                        fechaField,
                                        SizedBox(height: 15.0),
                                        precioField,
                                        SizedBox(height: 15.0),
                                        duracionField,
                                        SizedBox(height: 15.0),
                                        idiomasField,
                                        SizedBox(height: 15.0),
                                        lugintField,
                                        SizedBox(height: 15.0),
                                        plazasField,
                                        SizedBox(height: 15.0),
                                        modificarButon,
                                        SizedBox(height: 15.0),
                                        cancelButon
                                      ],
                                    ),
                                  ),
                                ]))),
                      ],
                    )),
              ),
            )));
  }

  Row nuevaFila(String nombre, IconData icon, String texto) {
    return Row(
      children: <Widget>[
        new Container(
          decoration: BoxDecoration(color: Colors.blue),
          child: Row(
            children: <Widget>[
              Text("  " + nombre + " ",
                  style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)),
              Icon(
                icon,
                size: 35,
                color: Colors.white,
              ),
              Text(
                " : ",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Text(
          "  " + texto,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
