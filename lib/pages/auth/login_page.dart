import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget{
  const LoginPage({super.key});
  @override  
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailControler = TextEditingController();
  final TextEditingController passwordControler = TextEditingController();
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:const EdgeInsets.all(24.0),
        child: Center(
          child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Connexion",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              TextField(
                controller: emailControler,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
              controller:passwordControler,
              obscureText:true,
              decoration:InputDecoration(
                labelText:"Mot de passe",
                border: OutlineInputBorder(),
              ),
              ),
              const SizedBox (height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context,'/home');
                  },
                  child:Text("Se connecter"),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/register');
                },
                child: const Text(
                  "Créer un compte",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    final String testEmail = "ibulakitadi@gmail.com";
                    final String testPassword = "221242";

                    if (emailControler.text == testEmail && passwordControler.text == testPassword){
                      Navigator.pushNamed(context,'/home');
                    }else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Email ou mot de passe incorrect")),
                      );
                    }
                  },
                  child: Text("Connexion"),
                ),
              ),
            ],
          ),
        ),
        ),
      ),
    );
  }
}