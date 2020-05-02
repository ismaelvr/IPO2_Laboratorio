
class Ruta{
  String _nombre;
  String _id;
  String _descripcion;
  String _fecha;
  int _precio;
  double _duracion;
  List<String> _idiomas;
  List<String> _lugaresInteres;
  int _puntuacion;
  int _plazas;
  String _foto;
  bool _real = true;
  //Guia guia;

  Ruta({String nombre, String id, String descripcion, String fecha, int precio, 
      double duracion, List<String> idiomas, List<String> lugaresInteres, int puntuacion, int plazas, String foto, bool real}){
        this._nombre = nombre;
        this._id = id;
        this._descripcion = descripcion;
        this._fecha = fecha;
        this._precio = precio;
        this._duracion = duracion;
        this._idiomas = idiomas;
        this._lugaresInteres = lugaresInteres;
        this._puntuacion = puntuacion;
        this._plazas = plazas;
        this._foto = foto;
        this._real = real;
      }

  String get nombre => _nombre;
  String get id => _id;
  String get descripcion => _descripcion;
  String get fecha => _fecha;
  int get precio => _precio;
  double get duracion => _duracion;
  List<String> get idiomas => _idiomas;
  List<String> get lugaresInteres => _lugaresInteres;
  int get puntuacion => _puntuacion;
  int get plazas => _plazas;
  String get foto => _foto;
  bool get real => _real;

}