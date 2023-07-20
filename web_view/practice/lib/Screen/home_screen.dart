import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('blog_mobile'),
        centerTitle: true,
      ),
      body: WebView(
        initialUrl: 'https://khc-developer.tistory.com/',
        javascriptMode: JavascriptMode.unrestricted,
      )
    );
  }
}
