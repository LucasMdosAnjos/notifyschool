import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    String email = '';
    String senha = '';
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          caixaDeTexto(),
          caixaDeTexto()
        ],
      ),
    );
  }

  Widget caixaDeTexto(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(),
    );
  }
}
