import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int year = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('User Profile'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget> [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ccc.jpg'),
                backgroundColor: Colors.teal,
                radius: 70.0,
              ),
            ),
            Divider(height: 55.0, color: Colors.teal, thickness: 10.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Icon(
                      Icons.person_2,
                      color: Colors.teal,
                    ),
                    SizedBox(width: 3.0,),
                    Text(
                      'NAME:',
                      style: TextStyle(
                          fontSize: 24.0
                      ),
                    ),
                  ],
                ),
                Text(
                  'Carla M. Villalobos',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0
                  ),
                ),
                SizedBox(height: 30.0,),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_month,
                      color: Colors.teal,
                    ),
                    SizedBox(width: 3.0,),
                    Text(
                      'YEAR:',
                      style: TextStyle(
                          fontSize: 24.0
                      ),
                    ),
                  ],
                ),
                Text(
                  '$year Year',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0
                  ),
                ),
                SizedBox(height: 30.0,),
                Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    SizedBox(width: 3.0,),
                    Text(
                      'EMAIL:',
                      style: TextStyle(
                          fontSize: 24.0
                      ),
                    ),
                  ],
                ),
                Text(
                  'carlavillalobos00@gmail.com',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0
                  ),
                ),
                SizedBox(height: 30.0,),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                    onPressed: (){
                      setState(() {
                        year += 1;
                      });
                    },
                    child: Text ('Add Year',
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
          ],
        ),
      ),
    );
  }
}
