import 'dart:async';
import 'package:wv_fitness_new/utils/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../../utils/colors.dart';
import 'package:wv_fitness_new/utils/web_view/controller/web_view_controller.dart';



class ShowWebView extends StatelessWidget {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  String url;
  // String page;

  ShowWebViewController controller = Get.put(ShowWebViewController());

  ShowWebView({required this.url, });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return onBack();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: white,
          centerTitle: true,
          // title: Text(
          //   page ,style: kSize18W600ColorBlack,
          // ),
          leading: MaterialButton(
              onPressed: () {
                onBack();
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: black,
              )),
        ),
        body: Container(
          child: WebView(
            initialUrl: url,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              Get.dialog(const Center(child: CircularProgressIndicator()),
                  barrierDismissible: true);
              _controller.complete(webViewController);
            },
            onPageStarted: (url) {},
            onPageFinished: (url) {
              Get.back();
            },
          ),
        ),
      ),
    );
  }

  onBack() {
    Get.back();
  }
}
