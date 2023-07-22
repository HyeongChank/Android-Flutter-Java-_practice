import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeurl = Uri.parse('https://khc-developer.tistory.com/');

class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(homeurl);

  HomeScreen({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('blog_mobile'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){
                // http://
                //https://
                // if(controller == null){
                //   return;
                // }
                controller.loadRequest(homeurl);
                print('클릭');
          },
              icon: Icon(
                Icons.home,
              ))
        ],
      ),
      body:WebViewWidget(
        controller: controller,
      )

      // WebView(
      //   onWebViewCreated: (WebViewController controller){
      //     this.controller = controller;
      //   },
      //   initialUrl: homeurl,
      //   // javascriptMode: JavascriptMode.unrestricted,
      // )
    );
  }
}
