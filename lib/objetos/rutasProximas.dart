import 'package:pr_ipo2/objetos/ruta.dart';

class RutaProxima extends Ruta{
  List<String> _vehiculos;

  RutaProxima(String nombre, String id, String descripcion, String fecha, int precio, 
      double duracion, List<String> idiomas, List<String> lugaresInteres, int plazas, String foto, this._vehiculos):
      super(nombre, id, descripcion, fecha, precio, duracion, idiomas, lugaresInteres, plazas, foto);
        
   List<String> get vehiculos => _vehiculos;
}