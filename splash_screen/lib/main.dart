import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      // 오른쪽 위 debug 표시 없애는 코드
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf99231),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //child 는 하나만, children은 여러개 가능
        children: [
          Image.asset(
            'asset/image/logo.png',
          ),
          CircularProgressIndicator(
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
