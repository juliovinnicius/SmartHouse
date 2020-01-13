import 'package:flutter/material.dart';

class SwichtTile extends StatefulWidget {
  final IconData iconData;
  final String text;
  final int atuador;
  bool lights;

  SwichtTile(this.iconData, this.text, this.atuador, this.lights);

  @override
  _SwichtTileState createState() => _SwichtTileState();
}

class _SwichtTileState extends State<SwichtTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      height: 60.0,
      child: SwitchListTile(
        title: Text(widget.text),
        value: widget.lights,
        onChanged: (value) {
          setState(() {
            value = widget.lights;
          });
        },
        secondary: Icon(widget.iconData),
      ),
    );
  }
}
