import 'package:flutter/material.dart';
import 'package:rdc_vaccin/models/child_model.dart';
class VaccinesCalendarPage extends StatelessWidget{
  final ChildModel child;
  const VaccinesCalendarPage ({super.key,required this.child});
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("${child.name} - Calendrier"),
      ),
      body: Center(
        child: Text("Ici sera le calendrier vaccinal de ${child.name}"),
      ),
    );
  }
}