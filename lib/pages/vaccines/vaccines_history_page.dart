import 'package:flutter/material.dart';
import 'package:rdc_vaccin/models/child_model.dart';
class VaccinesHistoryPage extends StatelessWidget{
  final ChildModel child;
  const VaccinesHistoryPage({super.key, required this.child});
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("${child.name} - historique"),
      ),
      body: Center(
        child: Text("Ici sera l'historique des vaccins de ${child.name}"),
      ),
    );
  }
}