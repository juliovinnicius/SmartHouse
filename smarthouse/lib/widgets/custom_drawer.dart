import 'package:flutter/material.dart';
import 'package:smarthouse/tiles/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {

  final PageController pageController;
  final BuildContext context;

  CustomDrawer( this.context, this.pageController );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget>[
          //_buildDrawerBack(),
          ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 8.0,
                      bottom: 0.0,
                      child: Text(
                        "Smart House",
                        style: TextStyle(
                          fontSize: 34.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0.0,
                      bottom: 0.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Olá, (aqui vai ter o nome do usuário)",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            child: Text(
                              "Entre ou cadastre-se",
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[50],
                              ),
                            ),
                            onTap: (){
                              final snackBar = SnackBar(
                                content: Text("Clicado"),
                                action: SnackBarAction(
                                  label: 'OK',
                                  onPressed: (){},
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              DrawerTile(Icons.home, "Ambientes", pageController,0),
              DrawerTile(Icons.remove_red_eye, "Alarmes", pageController,1),
              DrawerTile(Icons.settings, "Configurações", pageController, 2),
              DrawerTile(Icons.ac_unit, "Sensores", pageController,3),
            ],
          ),
        ],
      ),
    );
  }
}