import 'package:animation/opening_animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OpeningAnimation(),
    );
  }
}

class OpeningScreen extends StatefulWidget {
  const OpeningScreen({super.key});

  @override
  State<OpeningScreen> createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds:  1), (){
      Navigator.pushReplacement(  context, MaterialPageRoute(builder: (context) => const OpeningAnimation()));
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      backgroundColor: Color.fromRGBO(55, 51, 83, 1.0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: [
           
              SizedBox(
                height: 350,
                width: 350,
                child: Image(image: AssetImage('assets/images/Screenshot 2024-10-22 193043.png')),
              
                      
              
            ),
           
          ],
        
        ),
      
      ),
      
        
      
    );
  }
}

