import 'package:flutter/material.dart';
class HomePage extends StatelessWidget{
  const HomePage({super.key});
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: const Text("Accueil"),
        centerTitle: true,
        elevation: 2,
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Bienvenue!",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildMenuCard(
                    icon: Icons.person,
                    title:"Profil",
                    onTap:(){},
                  ),
                  _buildMenuCard(
                    icon:Icons.settings,
                    title:"Paramètres",
                    onTap:(){},
                  ),
                  _buildMenuCard(
                    icon:Icons.notifications,
                    title:"Notifications",
                    onTap:(){},
                  ),
                  _buildMenuCard(
                    icon:Icons.info,
                    title:"Info",
                    onTap:(){},
                  ),
                ],
              ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Accueuil",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profil",
          ),
        ],
      ),
    );
  }
  Widget _buildMenuCard({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 8,
              offset: const Offset(2, 2),
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,size: 40, color: Colors.blue),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}