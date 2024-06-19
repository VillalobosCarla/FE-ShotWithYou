import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('ShotWithYou'),
        ),
        backgroundColor: Colors.tealAccent,
      ),
      body: Center(
        child: Image.network('https://img.freepik.com/free-photo/glass-red-wine-bar-counter_107420-65846.jpg'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor:  Colors.tealAccent,
        child: Icon(
            Icons.add,
            color: Colors.pinkAccent,
        ),
    ),
    )
  ));
}

