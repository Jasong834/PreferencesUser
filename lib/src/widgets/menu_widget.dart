import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/pages/home_page.dart';
import 'package:preferenciasusuarioapp/src/pages/setting_page.dart';




class MenuWidget extends StatefulWidget {

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  String nombre = '';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
              decoration: BoxDecoration(
                image:DecorationImage(
                  image: AssetImage('assets/fondo.jpg'),
                  fit: BoxFit.cover
                )
            ),
          ),
          ListTile(
            leading: Icon(Icons.pages,color: Theme.of(context).primaryColor,),
            title: Text('Pages'),
            onTap: ()=>Navigator.pushReplacementNamed(context,HomePage.routeName),
          ),
          ListTile(
            leading: Icon(Icons.party_mode,color: Theme.of(context).primaryColor,),
            title: Text('Party Mode'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.people,color: Theme.of(context).primaryColor,),
            title: Text('People'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.settings,color: Theme.of(context).primaryColor,),
            title: Text('Settings'),
            onTap: (){
              //Navigator.pop(context);
              Navigator.pushNamed(context, SettingsPage.routeName);
            },
          )
        ],
      ),
    );
  }
}