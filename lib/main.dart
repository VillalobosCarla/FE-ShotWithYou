import 'package:flutter/material.dart';
import 'package:hehe/home.dart';
import 'package:hehe/pages/dashboard.dart';
import 'package:hehe/pages/menu.dart';


void main() => runApp(MaterialApp(
 routes: {
   '/' : (context) => Dashboard(),
   '/menu' : (context) => Menu(),
   'profile' : (context) => Home(),

 },
));
