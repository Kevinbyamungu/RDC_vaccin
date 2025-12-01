import 'dart:async';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget{
  const SplashScreen ({super.key});
  @override
  State <SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState (){
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/login');
    });
  }
  @override   
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/images/logo.jpeg/logo.jpeg',
          width:200,
      ),
    ),
    );
  }
}