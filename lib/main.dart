import 'package:flutter/material.dart';
import 'ui/home_page.dart';

void main(){
  runApp(MaterialApp(
    home: HomePage(), //Chama página da HomePage
    debugShowCheckedModeBanner: false, //Desativa o banner de debug
  ));
}