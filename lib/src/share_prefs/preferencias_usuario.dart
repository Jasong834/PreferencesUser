import 'package:shared_preferences/shared_preferences.dart';

class PrefernciaUsuario {

  static final PrefernciaUsuario _instancia = new PrefernciaUsuario._internal();

  factory PrefernciaUsuario(){
    return _instancia;
  }


  PrefernciaUsuario._internal();

  SharedPreferences _prefs;

  initPrefs()async{
    this._prefs = await SharedPreferences.getInstance();
  }


  get genero{
    return _prefs.getInt('genero')?? 1;
  }

  set genero(int value){
    _prefs.setInt('genero', value);
  }


  get colorSecundario{
    return _prefs.getBool('colorSecundario')?? false;
  }

  set colorSecundario(bool value){
    _prefs.setBool('colorSecundario', value);
  }

  get nombre{
    return _prefs.getString('nombre')?? '';
  }

  set nombre(String value){
    _prefs.setString('nombre',value);
  }

  get ultimaPagina{
    return _prefs.getString('ultimaPagina')?? 'home';
  }

  set ultimaPagina(String value){
    _prefs.setString('ultimaPagina',value);
  }


}
