import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget {
//   final Color color;
//
//   const HomeScreen({
//     required this.color,
//     Key? key,
//   }) : super(key:key);
//
//   @override
//   State<StatefulWidget> createState() {
//     return _HomeScreenState();
//   }
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//     width: 50.0,
//     height: 50.0,
//     color: widget.color,
//
//     );
//   }
// }

// stateless 에서 show context actions -> stful 변경하면 바로 바뀜
class HomeScreen extends StatefulWidget {
  final Color color;

  const HomeScreen({
    required this.color,
    Key? key,
    }) : super(key:key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      // stful 에서는 widget.color로 해야 함
      color: widget.color,
    );
  }
}


