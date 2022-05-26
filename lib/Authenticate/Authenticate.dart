import 'dart:async';

import 'package:chatapplication/Screens/HomeScreen.dart';
import 'package:chatapplication/Authenticate/LoginScree.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  void initState() {
    super.initState();
    if (_auth.currentUser != null){
      Timer(Duration(seconds: 3),
              ()=>Navigator.pushReplacement(context,
              MaterialPageRoute(builder:
                  (context) =>
                  HomeScreen()
              )
          )
      );
    }else{
      Timer(Duration(seconds: 3),
              ()=>Navigator.pushReplacement(context,
              MaterialPageRoute(builder:
                  (context) =>
                  LoginScreen()
              )
          )
      );
    }

  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.lightBlueAccent,
                Colors.purple,
                Colors.deepPurpleAccent,
                Colors.deepPurple,
              ],
            ),
        ),

        child: Center(
      child: Text(
      'ChatBit',
      style: TextStyle(
        decoration: TextDecoration.none,
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      ),
        ),
    );
    /*if (_auth.currentUser != null) {
      return HomeScreen();
    } else {
      return LoginScreen();
    }*/
  }
}