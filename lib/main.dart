import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      title: Text('User Profile'),
      backgroundColor: Colors.teal,
      centerTitle: true,
    ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'NAME:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0
              ),
            ),
            Text(
              'Carla M. Villalobos',
              style: TextStyle(
                fontSize: 20.0
              ),
            ),
            Text(
              'YEAR:',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0
              ),
            ),
            Text(
              'Third Year',
              style: TextStyle(
                  fontSize: 20.0
              ),
            ),
            Text(
              'EMAIL:',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0
              ),
            ),
            Text(
              'carlavillalobos00@gmail.com',
              style: TextStyle(
                  fontSize: 20.0
              ),
            ),
          ],
        ),
    ),
  ),
));