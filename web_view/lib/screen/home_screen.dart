import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  final homeUrl = 'http://blog.codefactory.ai';
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
              if (controller == null) {
                return;
              }
              controller!.loadUrl(homeUrl);
            }),
            icon: Icon(Icons.home),
          ),
        ],
        title: Text(
          'Code Factory',
        ),
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
        initialUrl: homeUrl,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
