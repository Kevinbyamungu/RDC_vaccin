import 'package:flutter/material.dart';
import 'package:rdc_vaccin/pages/auth/register_page.dart';
import 'package:rdc_vaccin/pages/children/add_child_page.dart';
import 'package:rdc_vaccin/pages/parent/parent_profile_page.dart';
import 'pages/splash/splash_screen.dart';
import 'pages/home/home_page.dart';
import 'pages/auth/login_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RDC_VACCIN',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: ThemeData(
       
       primarySwatch: Colors.blue
      ),
      
      routes: {
        '/home': (context) =>  HomePage(),
        '/parentProfile': (context) => ParentProfilePage(),
        '/AddChildPage':(context) => AddChildPage(),
        '/':(context) =>  SplashScreen(),
        '/login':(context) => LoginPage(),
        '/register':(context) => RegisterPage(),
        
        
        
      },
    );
  }
}

