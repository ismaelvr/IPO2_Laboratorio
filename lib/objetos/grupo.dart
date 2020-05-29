class Grupo {
  String _id;
  String _restricciones;
  String _intereses;
  int _tamano;
  String _idioma;
  String _foto;

  Grupo(String id, String restricciones, String intereses, int tamano,
      String idioma, String foto) {
    this._id = id;
    this._restricciones = restricciones;
    this._intereses = intereses;
    this._tamano = tamano;
    this._idioma = idioma;
    this._foto = foto;
  }

  String get id => _id;
  String get restricciones => _restricciones;
  String get intereses => _intereses;
  int get tamano => _tamano;
  String get idioma => _idioma;
  String get foto => _foto;
}
