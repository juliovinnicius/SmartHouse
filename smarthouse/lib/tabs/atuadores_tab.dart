import 'package:flutter/material.dart';
import 'package:smarthouse/tiles/switch_list_tile.dart';

class AtuadoresTab extends StatelessWidget {
  bool lights = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (lights == false) {
          lights = true;
          print(lights);
        } else {
          lights = false;
          print(lights);
        }
      },
      child: ListView(
        children: <Widget>[
          SwichtTile(Icons.lightbulb_outline, "Lâmpada da Sala", 2, lights),
        ],
      ),
    );
  }
}
