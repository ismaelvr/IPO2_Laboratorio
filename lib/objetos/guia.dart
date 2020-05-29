class Guia {
  String _nombre;
  String _id;
  String _correo;
  int _sueldo;
  double _valoracion;
  String _descripcion;
  String _idiomas;
  String _foto;

  Guia(String nombre, String id, String correo, int sueldo, double valoracion,
      String descripcion, String idiomas, String foto) {
    this._nombre = nombre;
    this._id = id;
    this._correo = correo;
    this._sueldo = sueldo;
    this._valoracion = valoracion;
    this._descripcion = descripcion;
    this._idiomas = idiomas;
    this._foto = foto;
  }

  String get nombre => _nombre;
  String get id => _id;
  String get correo => _correo;
  int get sueldo => _sueldo;
  double get valoracion => _valoracion;
  String get descripcion => _descripcion;
  String get idiomas => _idiomas;
  String get foto => _foto;
}
