class Ruta {
  String _nombre;
  String _id;
  String _descripcion;
  String _fecha;
  int _precio;
  double _duracion;
  String _idiomas;
  String _lugaresInteres;
  int _plazas;
  String _foto;
  bool _isSelected;

  Ruta(
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
      bool isSelected) {
    this._nombre = nombre;
    this._id = id;
    this._descripcion = descripcion;
    this._fecha = fecha;
    this._precio = precio;
    this._duracion = duracion;
    this._idiomas = idiomas;
    this._lugaresInteres = lugaresInteres;

    this._plazas = plazas;
    this._foto = foto;
    this._isSelected = isSelected;
  }

  String get nombre => _nombre;
  String get id => _id;
  String get descripcion => _descripcion;
  String get fecha => _fecha;
  int get precio => _precio;
  double get duracion => _duracion;
  String get idiomas => _idiomas;
  String get lugaresInteres => _lugaresInteres;
  int get plazas => _plazas;
  String get foto => _foto;
  bool get isSelected => _isSelected;
  set isSelected(bool estado) {
    _isSelected = estado;
  }
}
