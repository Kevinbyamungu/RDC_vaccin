import 'package:flutter/material.dart';
class AddChildPage extends StatelessWidget{
  const AddChildPage({super.key});
  @override  
  Widget build(BuildContext context){
    final List<Map<String, String>> children= [
      {
        "name": "Marie",
        "age": "2 ans",
      },
      {
        "name": "David",
        "age": "5ans",
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mes enfants"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: children.length,
        itemBuilder: (context,index){
          final child = children[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(child["name"]!),
              subtitle: Text("Age:${child["age"]}"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.pushNamed(context, '/childVaccines');
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, '/addchild');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}