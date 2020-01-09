import 'package:flutter/material.dart';
import 'package:smarthouse/widgets/custom_drawer.dart';

class HomePage extends StatelessWidget {

  final _pageControler = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageControler,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            title: Text("Smart House"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(context, _pageControler),
        ),
        Container(color: Colors.black,),
        Container(color: Colors.red,)
      ],
    );
  }
}