import "package:flutter/material.dart";
// Widget reutilizado de sesiones anteriores (añadido al paquete "secciones")
import "package:navigation_drawer_ejemplo/secciones/opinionpersonal.dart";

class RutaOpinionPersonal extends StatelessWidget {
// Variable estática que se usa en main.dart (propiedad routes)
  static const nombreRuta = "/opinionpersonal";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Danos tu opinión"),
          backgroundColor: Colors.orangeAccent,
        ),
        body:
            new AreaOpinionPersonal() //widget reutilizado de sesiones anteriores
        );
  }
}
