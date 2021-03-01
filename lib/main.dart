import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:pocket_tp/RouteGenerator.dart';
import 'package:pocket_tp/Pages/Home.dart';
import 'globals.dart' as globals;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  globals.telaSelecionada = 0;
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.white,
      accentColor: Colors.amber,
    ),
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    onGenerateRoute: RouteGenerator.generateRoute,
    home: Home(),

  )

  );
}