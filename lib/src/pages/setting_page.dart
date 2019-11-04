import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/share_prefs/preferencias_usuario.dart';
import 'package:preferenciasusuarioapp/src/widgets/menu_widget.dart';

class SettingsPage extends StatefulWidget {

  static final String  routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {


  bool _colorSecundario = true;
  int _genero;
  String _nombre='';

  TextEditingController _textController;

  final prefs = new PrefernciaUsuario();

  @override
  void initState() {
    super.initState();
    _genero = prefs.genero;
    _colorSecundario = prefs.colorSecundario;
    _nombre = prefs.nombre;
    prefs.ultimaPagina = SettingsPage.routeName;
    _textController = new TextEditingController(text: _nombre);
  }





  _setSelectedRadio(int valor){
    prefs.genero = valor;
    _genero = valor;
    setState(() { });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (prefs.colorSecundario) ? Colors.blue : Colors.deepPurple,
        title: Text('Settings'),
      ),
      drawer: MenuWidget(),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0) ,
            child: Text('Settings',style: TextStyle(fontSize: 45.0,fontWeight: FontWeight.bold,color: Colors.deepPurple)),
          ),
          Divider(),
          SwitchListTile(
            value: _colorSecundario,
            title: Text('Color secundario'),
            onChanged: (valor){
              setState(() {
                _colorSecundario = valor; 
                prefs.colorSecundario = valor;
                
              });
            },
            activeColor: Colors.deepPurple,
          ),

          RadioListTile(
            value: 1,
            title: Text('Masculino'),
            groupValue: _genero,
            onChanged: _setSelectedRadio,
            activeColor: Colors.deepPurple,
          ),

          RadioListTile(
            value: 2,
            title: Text('Femenino'),
            groupValue: _genero,
            onChanged: _setSelectedRadio,
            activeColor: Colors.deepPurple,
          ),
          Divider(),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _textController,
              cursorColor: Colors.deepPurple,
              decoration: InputDecoration(
                labelText: 'Nombre',
                helperText: 'Nombre del usuario'
              ),
              onChanged: (value){
                prefs.nombre = value;
              },
            ),
          )
        ],
      )
    );
  }
}