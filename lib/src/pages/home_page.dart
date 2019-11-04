import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/share_prefs/preferencias_usuario.dart';
import 'package:preferenciasusuarioapp/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {

  static final String  routeName = 'home';


  final prefs = new PrefernciaUsuario();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (prefs.colorSecundario) ? Colors.blue : Colors.deepPurple,
        title: Text('Preferencias'),
      ),
      drawer : MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color secundario:${prefs.colorSecundario}'),
          Divider(),
          Text('Genero:${prefs.genero}'),
          Divider(),
          Text('Nombre:${prefs.nombre}'),
          Divider()
        ],
      ),
    );
  }


}