import "package:flutter/material.dart";
import 'package:pr_ipo2/BaseAuth.dart';
import 'package:pr_ipo2/interfaces/DetallesGrupos.dart';

class DrawerVista extends StatefulWidget {
  final int i;
  DrawerVista(this.i);

  @override
  _DrawerVistaState createState() => _DrawerVistaState();
}

enum DrawerSelection { inicio, rutasReal, proxRutas, guias, grupos, promociones, ajustes }

class _DrawerVistaState extends State<DrawerVista> {
  ListTile _construirItem(BuildContext context, IconData iconData, String texto, String ruta, DrawerSelection draweSel) {
    DrawerSelection elect = eleccion(widget.i);
    return new ListTile(
        selected: elect == draweSel,
        leading: new Icon(iconData),
        title: new Text(texto),
        onTap: () {
          setState(() {
            Navigator.pushReplacementNamed(context, ruta);
          });
        });
  }

  ListTile _construirAjustes(BuildContext context, IconData iconData, String texto, String ruta, DrawerSelection draweSel) {
    DrawerSelection elect = eleccion(widget.i);
    return new ListTile(
        selected: elect == draweSel,
        leading: new Icon(iconData),
        title: new Text(texto),
        onTap: () {
          setState(() {
            Navigator.pushNamed(context, ruta);
          });
        });
  }

  ListTile _logoutDrawer(BuildContext context, IconData iconData, String texto) {
    return new ListTile(
      leading: new Icon(iconData),
      title: new Text(texto),
      onTap: () {
        setState(() {
          AlertDialog dialogo = new AlertDialog(
            content: new Text('¿Seguro que deseas salir?'),
            actions: <Widget>[
              new FlatButton(
                  onPressed: () async {
                    final Auth _auth = Auth();

                    await _auth.signOut();
                    Navigator.pop(context);
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
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new ListView(children: <Widget>[
      new UserAccountsDrawerHeader(
        margin: EdgeInsets.only(bottom: 0.0),
        accountName: Text(
          "David Bisbal",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        accountEmail: Text(
          "ID : 012345",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        currentAccountPicture: CircleAvatar(
          radius: 30.0,
          backgroundImage: AssetImage("assets/bisbal.png"),
          backgroundColor: Colors.transparent,
        ),
        decoration: BoxDecoration(
            color: Colors.orange,
            border: Border.all(
              color: Colors.blue,
              width: 2,
            ),
            image: DecorationImage(alignment: Alignment.bottomRight, image: AssetImage("assets/logo.png"))),
      ),

      // TODOS LOS APARTADOS ///////////////
      _construirItem(context, Icons.folder_shared, "Inicio", "/principal", DrawerSelection.inicio),
      new Divider(height: 0.0, color: Colors.black),

      _construirItem(context, Icons.airplay, "Rutas realizadas", "/rutasrealizadas", DrawerSelection.rutasReal),
      _construirItem(context, Icons.art_track, "Próximas rutas", "/proximasrutas", DrawerSelection.proxRutas),
      _construirItem(context, Icons.person, "Guías", "/guias", DrawerSelection.guias),
      _construirItem(context, Icons.people, "Grupos", "/grupos", DrawerSelection.grupos),
      _construirItem(context, Icons.monetization_on, "Promociones", "/promociones", DrawerSelection.promociones),
      new Divider(height: 0.0, color: Colors.black),
      _construirAjustes(context, Icons.build, "Ajustes", "/ajustes", DrawerSelection.ajustes),
      new AboutListTile(
        child: new Text("Acerca de..."),
        applicationIcon: new Icon(Icons.info),
        icon: new Icon(Icons.info),
        applicationName: "Acerca de nosotros",
        applicationVersion: "v1.2",
        aboutBoxChildren: <Widget>[
          Text(
            "Aplicación desarrollada por:\n",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            "Pedro Palencia Quiñones \nIsmael Vélez Recio",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
      _logoutDrawer(context, Icons.exit_to_app, "Logout"),
      new Divider(height: 0.0, color: Colors.black),
    ]);
  }

  DrawerSelection eleccion(int i) {
    switch (i) {
      case 0:
        return DrawerSelection.inicio;
        break;
      case 1:
        return DrawerSelection.rutasReal;
        break;
      case 2:
        return DrawerSelection.proxRutas;
        break;
      case 3:
        return DrawerSelection.guias;
        break;
      case 4:
        return DrawerSelection.grupos;
        break;
      case 5:
        return DrawerSelection.promociones;
        break;
      case 6:
        return DrawerSelection.ajustes;
        break;

      default:
    }
    return null;
  }
}
