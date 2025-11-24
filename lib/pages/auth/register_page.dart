
import 'package:flutter/material.dart';
class RegisterPage extends StatefulWidget{
  const RegisterPage({super.key});
  @override  
  State<RegisterPage> createState() => _RegisterPageState();
}
class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController =  TextEditingController();
  final TextEditingController emailController =  TextEditingController();
  final TextEditingController passwordController =  TextEditingController();
  final TextEditingController confirmPasswordController =  TextEditingController();
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text ("Créer un compte"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: "Nom complet",
                  border:OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Mot de passe",
                  border:OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: confirmPasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Confirmer le mot de passe",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: (){
                  String name = nameController.text.trim();
                  String email = emailController.text.trim();
                  String password = passwordController.text.trim();
                  String confirm = confirmPasswordController.text.trim();
                  if (name.isEmpty || email.isEmpty || password.isEmpty || confirm.isEmpty ) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Veuillez remplir tous les champs")),
                    );
                    return;
                  }
                  if (password !=confirm){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Les mots de passe ne correspondent pas")),
                    );
                    return;
                  }
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Compte créé avec succès")),
                  );

                },
                child: const Text("Créer le compte"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}