import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[200],
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Text(
                'u%i',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'parisienne',
                  fontSize: 80.0,
                ),
              ),
              Text(
                  '우리 처음 만난 날',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'sunflower',
                  fontSize: 30.0,
                ),
              ),
              Text(
                '2000,00,00',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'sunflower',
                  fontSize: 20.0,

                ),
              ),
              IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.favorite,
                  ),
              ),
              Text('D+1',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'sunflower',
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],

          ),
        ),
      ),
    );

  }
}