import  "package:flutter/material.dart";

class DrawerVista extends StatefulWidget {

  @override
  _DrawerVistaState createState() => _DrawerVistaState();
}

class _DrawerVistaState extends State<DrawerVista>{
  ListTile _construirItem(
      BuildContext context, IconData iconData, String texto, String ruta) {
    return new ListTile(
        leading: new Icon(iconData),
        title: new Text(texto),
        onTap: () {
          setState(() {
            Navigator.pushReplacementNamed(context, ruta);
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
      new UserAccountsDrawerHeader(
        
        accountName: Text("David Bisbal",  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
        //accountEmail: Text("avermaria@gmail.com",  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
        currentAccountPicture: CircleAvatar(
                  
                  radius: 30.0,
                  backgroundImage: AssetImage("assets/bisbal.png"),
                  backgroundColor: Colors.transparent,
                  
                ),
        decoration: BoxDecoration(color: Colors.orange,
        border: Border.all(color: Colors.blue,width: 2,),
        image: DecorationImage(alignment: Alignment.bottomRight,
        image: AssetImage("assets/logo.png"))),
      ),

      // TODOS LOS APARTADOS ///////////////
      
      Text("Gestión"),
      Padding(padding: const EdgeInsets.fromLTRB(10, 0, 0, 0)),
      // Padding(padding: const EdgeInsets.all(0)),
      
      new Divider(
        height: 0.0, color: Colors.grey
      ),
      _construirItem(context, Icons.airplay, "Rutas realizadas", "/rutasrealizadas"),
      new Divider(
        height: 0.0, color: Colors.black
      ),
      _construirItem(context, Icons.art_track, "Próximas rutas", "/proximasrutas"),
      new Divider(
        height: 0.0, color: Colors.black
      ),
      _construirItem(context, Icons.person, "Guías", "/guias"),
      new Divider(
        height: 0.0, color: Colors.black
      ),
      _construirItem(context, Icons.people, "Grupos", "/grupos"),
      new Divider(
        height: 0.0, color: Colors.black
      ),
      _construirItem(context, Icons.monetization_on, "Promociones", "/promociones"),
      new Divider(
        height: 0.0, color: Colors.grey
      ),

      Text("Uso interno"),
      new Divider(
        height: 0.0, color: Colors.grey
      ),
      _construirItem(context, Icons.folder_shared, "Datos Personales", "/principal"),
      new Divider(
        height: 0.0, color: Colors.black
      ),
      _construirItem(context, Icons.build, "Ajustes", "/grupos"),
      new Divider(
        height: 0.0, color: Colors.black
      ),
      new AboutListTile(
        child: new Text("Acerca de..."),
        applicationIcon: new Icon(Icons.info),
        icon: new Icon(Icons.info),
        applicationName: "Acerca de nosotros",
        applicationVersion: "v1.19",
      ),
      new Divider(
        height: 0.0, color: Colors.black
      ),
    ]
      
    );
  }
  
}
