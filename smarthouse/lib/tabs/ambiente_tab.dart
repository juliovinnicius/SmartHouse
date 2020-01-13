import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:smarthouse/tiles/ambientes_tile.dart';

class AmbientesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      //obtendo as categorias da coleção ambientes no firebase
      future: Firestore.instance.collection("ambientes").getDocuments(),
      builder: (context, snapshot){
        if( !snapshot.hasData ) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        else {
          return ListView(
            children: snapshot.data.documents.map(
              (doc){
                return AmbientesTile(doc);
              }
            ).toList(),
          );
        }
      },
    );
  }
}