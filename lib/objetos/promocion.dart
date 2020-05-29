class Promocion {
  String _nombre;
  String _id;
  String _descripcion;
  String _idiomas;
  int _precio;
  String _foto;

  Promocion(String nombre, String id, String descripcion, String idiomas, int precio, String foto) {
    this._nombre = nombre;
    this._id = id;
    this._precio = precio;
    this._descripcion = descripcion;
    this._idiomas = idiomas;
    this._foto = foto;
  }

  String get nombre => _nombre;
  String get id => _id;
  String get descripcion => _descripcion;
  String get idiomas => _idiomas;
  int get precio => _precio;
  String get foto => _foto;
}
