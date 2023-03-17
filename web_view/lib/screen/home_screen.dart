import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('http://blog.codefactory.ai');

class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(homeUrl);

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (() {
              //print('click');
              controller.loadRequest(homeUrl);
            }),
            icon: Icon(Icons.home),
          ),
        ],
        title: Text(
          'Code Factory',
        ),
      ),
      body: WebViewWidget(controller: controller),
      // WebView(
      //   onWebViewCreated: (WebViewController controller) {
      //     this.controller = controller;
      //   },
      //   initialUrl: homeUrl,
      //   javascriptMode: JavascriptMode.unrestricted,
      // ),
    );
  }
}
