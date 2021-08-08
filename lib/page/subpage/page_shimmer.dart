import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class PageShimmer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PageShimmerState();
  }
}

class PageShimmerState extends State<PageShimmer> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: SelectableText(
              'https://pub.dev/packages/shimmer',
              style: GoogleFonts.adventPro(),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Image.network(
                'https://github.com/hnvn/flutter_shimmer/blob/master/screenshots/loading_list.gif?raw=true'),
          )
        ],
      ),
    );
  }
}
