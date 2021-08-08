import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageConvexBottomBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PageConvexBottomBarState();
  }
}

class PageConvexBottomBarState extends State<PageConvexBottomBar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            child: SelectableText('https://pub.dev/packages/convex_bottom_bar'),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          ),
          Container(
            child: Image.network(
              'https://github.com/hacktons/convex_bottom_bar/raw/master/doc/preview.png',
              width: 800,
              fit: BoxFit.contain,
            ),
          ),
          Wrap(
            direction: Axis.horizontal,
            children: List.generate(
                convex_urls.length,
                (index) => Container(
                      width: 400,
                      height: 80,
                      child: Image.network(convex_urls.elementAt(index)),
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    )),
          )
        ],
      ),
    );
  }
}

List<String> convex_urls = [
  'https://github.com/hacktons/convex_bottom_bar/raw/master/doc/appbar-fixed.gif',
  'https://github.com/hacktons/convex_bottom_bar/raw/master/doc/appbar-react.gif',
  'https://github.com/hacktons/convex_bottom_bar/raw/master/doc/appbar-badge.gif',
  'https://github.com/hacktons/convex_bottom_bar/raw/master/doc/appbar-fixed-circle.gif',
  'https://github.com/hacktons/convex_bottom_bar/raw/master/doc/appbar-react-circle.gif',
  'https://github.com/hacktons/convex_bottom_bar/raw/master/doc/appbar-flip.gif',
];
