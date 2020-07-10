import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(
              color: Colors.orange
          ),
        ),
      body: Center(
        child: RaisedButton(
          child: Text('Cadastro'),
          onPressed: () {
            Navigator.pushNamed(context, '/cadastro');
          },
        ),
      ),
    );
  }
}