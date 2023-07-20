import 'package:flutter/material.dart';
//stless enter 하면 자동 완성
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.black,

          child: Column(
           
            mainAxisAlignment: MainAxisAlignment.start,
           
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
          
            children: [
              //Expanded(나머지 채움)-flex(비율(기본 1)) / Flexible(나머지 비움) : children 안에서만 사용 가능
              Flexible(
                child: Container(
                  color: Colors.red,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  width: 50.0,
                  height: 50.0,
                ),
              ),

              Expanded(
                child: Container(
                  color: Colors.green,
                  width: 50.0,
                  height: 50.0,
                ),
              ),

            ],
          ),

        ),
      ),
    );
  }
}