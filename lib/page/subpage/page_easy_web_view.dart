import 'dart:html';

import 'package:easy_web_view/easy_web_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageEasyWebView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PageEasyWebViewState();
  }
}

class PageEasyWebViewState extends State<PageEasyWebView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'https://pub.dev/packages/easy_web_view',
              style: GoogleFonts.acme(
                  textStyle: TextStyle(fontSize: 30, color: Colors.red)),
            ),
          ),
          EasyWebView(
            src: '<h1>我是标题</h1>',
            onLoaded: () {},
            isHtml: true,
            width: 100,
            height: 100,
          ),
          EasyWebView(
            webAllowFullScreen: true,
            width: 200,
            height: 300,
            src: 'https://pub.dev/packages/easy_web_view',
            onLoaded: () {},
            isHtml: false,
            convertToWidgets: false,
            isMarkdown: false,
          )
        ],
      ),
    );
  }
}
