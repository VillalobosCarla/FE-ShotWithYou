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
        leading: IconButton(
          icon: Image.asset('assets/img_1.png'),
          onPressed: (){},
        ),
      ),

      body: Container(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Center(
          child: Image.asset(
          'assets/img.png',
            width: 360,
          ),
        ),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/menu');

                },
                child: Text('Menu',),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.black,
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, 'profile');
                },
                child: Text('Profile',),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.black,
                ),
              ),
            ],
          ),
        ),
      )

    );
  }
}

