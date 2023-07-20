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
          // height: MediaQuery.of(context).size.height,
          // Row, Column
          child: Column(
            // MainAxisAlignment - 주축 정렬
            // start - 시작
            // end - 끝
            // center - 가운데
            // spaceBetween - 위젯 간 사이 동일하게
            // spaceEvenly - 위젯 간 사이 동일하고 양 끝에 공간도 동일
            // spaceAround - 위젯 간 사이 동일 양 끝은 반
            mainAxisAlignment: MainAxisAlignment.start,
            // column 일 때, width: MediaQuery.of(context).size.width // CrossAxisAlignment는 가로 의미
            // row 일 때, height : MediaQuery.of(context).size.height // ..        는 세로 의미함
            // stretch - 최대한 늘림
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            // mainAxisSize - 주축 크기
            children: [
              Container(
                color: Colors.red,
                width: 50.0,
                height: 50.0,
              ),
              Container(
                color: Colors.orange,
                width: 50.0,
                height: 50.0,
              ),

              Container(
                color: Colors.green,
                width: 50.0,
                height: 50.0,
              ),

            ],
          ),

        ),
      ),
    );
  }
}