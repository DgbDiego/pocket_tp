import 'package:flutter/material.dart';
import 'package:pocket_tp/Pages/Consulta.dart';
import 'package:pocket_tp/Pages/Home.dart';

class RouteGenerator {

  static Route<dynamic>generateRoute(RouteSettings settings){

    switch(settings.name){
      case "/":
        return MaterialPageRoute(
            builder: (_) => Home()
        );

      case "/home":
        return MaterialPageRoute(
            builder: (_) => Home()
        );
      case "/consulta":
        return MaterialPageRoute(
            builder: (context) => Consulta()
        );

      default:
        _erroRota();
    }

  }

  static Route<dynamic> _erroRota(){
    return MaterialPageRoute(
        builder: (_){
          return Scaffold(
            appBar: AppBar(title: Text("Tela não encontrada"),),
            body: Center(
              child:  Text("Tela não encontrada"),
            ),
          );
        }
    );
  }

}