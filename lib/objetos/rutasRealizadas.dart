import 'package:pr_ipo2/objetos/ruta.dart';

class RutaRealizada extends Ruta {
  int _puntuacion;

  RutaRealizada(
      String nombre,
      String id,
      String descripcion,
      String fecha,
      int precio,
      double duracion,
      String idiomas,
      String lugaresInteres,
      int plazas,
      String foto,
      bool isSelected,
      this._puntuacion)
      : super(nombre, id, descripcion, fecha, precio, duracion, idiomas,
            lugaresInteres, plazas, foto, isSelected);

  int get puntuacion => _puntuacion;
}
