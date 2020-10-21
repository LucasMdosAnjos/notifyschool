import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:notifyschool/login.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _auth = FirebaseAuth.instance;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(microseconds: 1)).then((value) {
      if (_auth.currentUser == null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => Login()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notify School'),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
