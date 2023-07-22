import 'package:flutter/material.dart';

// stateless 에서 show context actions -> stful 변경하면 바로 바뀜
class HomeScreen extends StatefulWidget {
  final Color color;

  HomeScreen({
    required this.color,
    Key? key,
  }) : super(key: key){
    print('widget constructor 실행');
  }

  @override
  _HomeScreenState createState() {
    print('createstate 실행');
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int number =0;
  @override
  void initState() {
    print('initstate 실행');
    super.initState();

  }
  @override
  void didChangeDependencies() {
    print('didchange 실행');
    super.didChangeDependencies();

  }
  @override
  void deactivate() {
    print('deactivate 실행');
    super.deactivate();

  }
  @override
  void dispose() {
    print('dispose 실행');
    super.dispose();

  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    print('didupdate 실행');
    super.didUpdateWidget(oldWidget);
  }
  @override
  Widget build(BuildContext context) {
    print('build 실행');
    // 웬만한 모든 행동에 대한 함수 제공(GestureDetector)
    // child에 대한
    return GestureDetector(
      onTap: (){
        print('click');
        setState(() {
          number ++;
        });
      },
      child: Container(
        width: 50.0,
        height: 50.0,
        // stful 에서는 widget.color로 해야 함
        color: widget.color,
        child: Center(
          child:Text(number.toString()) ,
        ),
      ),
    );
  }
}


