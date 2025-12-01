import 'package:flutter/material.dart';
import 'package:rdc_vaccin/models/child_model.dart';
import 'package:rdc_vaccin/pages/vaccines/vaccines_calendar_page.dart';
import 'package:rdc_vaccin/pages/vaccines/vaccines_history_page.dart';
class ChildDetailsPage extends StatelessWidget{
  final ChildModel child;
  const ChildDetailsPage ({super.key,required this.child});
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("${child.name}"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        child.name,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text("Date de naissance: ${child.birthday}"),
                      Text("Sexe : ${child.gender}"),
                      if(child.weight != null)
                      Text("Poids : ${child.weight} kg"),
                      if (child.height !=null)
                      Text("Taille: ${child.height} cm"),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_)=> VaccinesCalendarPage(child: child),
                    ),
                  );
                },
                child: const Text("Calendrier vaccinal"),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_)=>VaccinesHistoryPage(child:child),
                    ),
                  );
                },
                child: const Text("Historique des vaccins"),
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: (){

                },
                child: const Text("Modifier les informations"),
              )
            ],
          ),
        ),
      ),
    );
  }
}