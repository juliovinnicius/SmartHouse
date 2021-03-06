import 'package:flutter/material.dart';
import 'package:smarthouse/widgets/custom_drawer.dart';
import 'package:smarthouse/tabs/atuadores_tab.dart';
import 'package:smarthouse/tabs/ambiente_tab.dart';

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
            title: Text("Ambientes"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(context, _pageControler),
          body: AmbientesTab(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Smart House"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(context, _pageControler),
          body: AtuadoresTab(),
        ),
        Container(
          color: Colors.red,
        )
      ],
    );
  }
}
