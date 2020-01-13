import 'package:flutter/material.dart';

class AtuadoresTab extends StatefulWidget {
  @override
  _AtuadoresTabState createState() => _AtuadoresTabState();
}

class _AtuadoresTabState extends State<AtuadoresTab> {
  bool lights = false;

 

  final List<ItemModel> _itens = [ItemModel("Sala", false), ItemModel("Quarto", false)];

  @override
  Widget build(BuildContext context) 
  {
    return ListView.builder(
      itemCount: this._itens.length,
      itemBuilder: (BuildContext context, int index){
        
        ItemModel item = this._itens[ index ];
        return SwitchListTile(
          title: Text( item.titulo ),
          value: item.value,
          onChanged: (bool value) => this.setState((){
            this._itens[ index ].value = !item.value;
          }),
        );
      },
    );
  }
}

class ItemModel {
  String _tiulo;
  bool _value;

  ItemModel(this._tiulo, this._value);

  String get titulo{
    return this._tiulo;
  }

  bool get value{
    return this._value;
  }

  set value(bool b){
    this._value = b;
  }
}