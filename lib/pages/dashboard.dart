import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/menu');
                },
                child: Text('Go to Menu',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.teal)
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, 'profile');
                },
                child: Text('Go to User Profile',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.teal)
                ),
              ),
            ],
          ),
        ),
      ),


    );
  }
}
