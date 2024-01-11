import 'package:flutter/material.dart';
import 'package:pageview_imagepriyanka/app_data.dart';
import 'package:pageview_imagepriyanka/display_image.dart';

class PageViewImage extends StatefulWidget {
  const PageViewImage({Key? key}) : super(key: key);

  @override
  State<PageViewImage> createState() => _PageViewImageState();
}

class _PageViewImageState extends State<PageViewImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.pink,
        title: Text('OSCAR WILDE QUOTES IMAGES',
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              height: 200,
              child: PageView.builder(
                  itemCount: appdataList.length,
                  itemBuilder: (context, index) {
                    return DisplayImage(appdataList: appdataList[index]);
                  }))
        ],
      ),
    );
  }
}
