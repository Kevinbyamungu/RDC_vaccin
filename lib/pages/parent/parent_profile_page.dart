import 'package:flutter/material.dart';
class ParentProfilePage extends StatelessWidget{
  const ParentProfilePage ({super.key});
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil Parent"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Informations du parent",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nom",
                  style: TextStyle(fontSize: 16)),SizedBox(height: 5),
                  Text("Email",style: TextStyle(fontSize: 16)),
                  SizedBox(height: 5),
                  Text("Téléphone",style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Mes enfants",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  _buildChildItem(
                    name:"Enfant 1",
                    age:"2 ans",
                    onTap:(){
                      Navigator.pushNamed(context,'/childrenList');
                    },
                  ),
                  _buildChildItem(
                    name:"Enfant 2",
                    age:"5 ans",
                    onTap:(){
                      Navigator.pushNamed(context, '/childrenList');
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/addChild');
                },
                child: const Text("Ajouter un enfant"),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget _buildChildItem({
    required String name,
    required String age,
    required VoidCallback onTap,
  }) {
    return Card(
      child: ListTile(
        title: Text(name),
        subtitle: Text("Age:$age"),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}