import "package:flutter/material.dart";
import 'package:pr_ipo2/objetos/guia.dart';
import 'package:pr_ipo2/objetos/promocion.dart';

class ModificarPromocion extends StatefulWidget {
  final Promocion promocion;
  ModificarPromocion(this.promocion);
  @override
  _ModificarPromocionState createState() => _ModificarPromocionState();
}

class _ModificarPromocionState extends State<ModificarPromocion> {
  TextStyle style = TextStyle(fontSize: 20.0);
  TextEditingController nombreController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController descripcionController = TextEditingController();
  TextEditingController idiomasController = TextEditingController();
  TextEditingController precioController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  String _nombre = "";
  String _id = "";
  String _descripcion = "";
  String _idiomas = "";
  int _precio = 0;
  String _foto = "/assets/addImage.png"; //comorl?
  @override
  Widget build(BuildContext context) {
    void _alertpromModificado(BuildContext context) {
      AlertDialog dialogo = new AlertDialog(
        content: new Text('Promoción modificada correctamente'),
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
      initialValue: widget.promocion.nombre,
      //controller: nombreController,
      obscureText: false,
      style: style,
      validator: (val) => val.isEmpty ? 'Debes introducir un nombre' : null,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Nombre de la promoción",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      onChanged: (val) {
        setState(() => _id = val);
      },
    );
    final idField = TextFormField(
      initialValue: widget.promocion.id,
      //controller: idController,
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
      initialValue: widget.promocion.descripcion,
      minLines: 1,
      maxLines: 5,
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
    final idiomasField = TextFormField(
      initialValue: widget.promocion.idiomas,
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
    final precioField = TextFormField(
      initialValue: widget.promocion.precio.toString(),
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

    final modificarButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async {
          if (_formKey.currentState.validate()) {
            Promocion promocion = new Promocion(_nombre, _id, _descripcion, _idiomas, _precio, _foto);
            _alertpromModificado(context);
          }
        },
        child: Text("Guardar cambios",
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
          title: new Text("Modificar promoción"),
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
                              image: AssetImage(widget.promocion.foto),
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
                                        precioField,
                                        SizedBox(height: 15.0),
                                        idiomasField,
                                        SizedBox(height: 15.0),
                                        descripcionField,
                                        SizedBox(height: 15.0),
                                        modificarButon,
                                        SizedBox(height: 15.0),
                                        cancelButon,
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