import 'dart:html';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:easy_web_view/easy_web_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageAnimatedText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PageAnimatedTextState();
  }
}

class PageAnimatedTextState extends State<PageAnimatedText> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      child: Wrap(
        direction: Axis.horizontal,
        children: [
          Container(
            color: Colors.amber,
            child: AnimatedTextKit(animatedTexts: [
              RotateAnimatedText('aaaaaaaaa',
                  textStyle: TextStyle(color: Colors.white)),
              RotateAnimatedText('text',
                  textStyle: TextStyle(color: Colors.green)),
              RotateAnimatedText('text')
            ]),
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          ),
          Container(
            color: Colors.amber,
            child: Center(
              child: AnimatedTextKit(animatedTexts: [
                FadeAnimatedText('aaaaaaaaa',
                    textStyle: TextStyle(color: Colors.white)),
                FadeAnimatedText('text',
                    textStyle: TextStyle(color: Colors.green)),
                FadeAnimatedText('text')
              ]),
            ),
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          ),
          Container(
            color: Colors.amber,
            child: Center(
              child: AnimatedTextKit(animatedTexts: [
                TyperAnimatedText('aaaaasdfsdfsdaaaa',
                    textStyle:
                        TextStyle(color: Colors.white, fontFamily: 'Bobbers')),
                TyperAnimatedText('tesdfsdfsdfsdfsxt',
                    textStyle:
                        TextStyle(color: Colors.green, fontFamily: 'Bobbers')),
                TyperAnimatedText('tesdfsdfsfdsdfsdfxt')
              ]),
            ),
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          ),
          Container(
            color: Colors.amber,
            child: Center(
              child: AnimatedTextKit(animatedTexts: [
                TypewriterAnimatedText('aaaaasdfsdfsdaaaa',
                    textStyle:
                        TextStyle(color: Colors.white, fontFamily: 'Bobbers')),
                TypewriterAnimatedText('tesdfsdfsdfsdfsxt',
                    textStyle:
                        TextStyle(color: Colors.green, fontFamily: 'Bobbers')),
                TypewriterAnimatedText('tesdfsdfsfdsdfsdfxt')
              ]),
            ),
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          ),
        ],
      ),
    );
  }
}
