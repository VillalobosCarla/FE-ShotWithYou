import 'package:flutter/material.dart';
import 'package:hehe/home.dart';
import 'package:hehe/pages/dashboard.dart';
import 'package:hehe/pages/login.dart';
import 'package:hehe/pages/menu.dart';
import 'package:hehe/pages/signup.dart';


import 'pages/menu.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/login',
 routes: {
   '/' : (context) => Dashboard(),
   '/menu' : (context) => Menu(),
   'profile' : (context) => Home(),
   '/signup' : (context) => Signup(),
   '/login' : (context) => Login()

 },
));
