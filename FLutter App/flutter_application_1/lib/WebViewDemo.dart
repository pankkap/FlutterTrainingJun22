import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewDemo extends StatelessWidget {
  const WebViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Webview Demo"),
      ),
      body: WebView(
        initialUrl: "https://www.google.com/",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
