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
      body: PageView(
        children: [
          Image.asset('asset/img/image_1.jpeg'),
          Image.asset('asset/img/image_2.jpeg'),
          Image.asset('asset/img/image_3.jpeg'),
          Image.asset('asset/img/image_4.jpeg'),
          Image.asset('asset/img/image_5.jpeg'),
        ],
      ),
    );
  }
}
