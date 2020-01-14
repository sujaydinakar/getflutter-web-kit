import 'package:flutter/material.dart';
import 'package:gf_web/screens/layout/layout.dart';
import '../../styles/styles.dart';
import 'package:getflutter/colors/gf_color.dart';
import 'package:getflutter/components/image/gf_image_overlay.dart';
import 'package:flutter/cupertino.dart';
import 'package:getflutter/components/carousel/gf_carousel.dart';
import 'package:getflutter/components/carousel/gf_items_carousel.dart';


final List<String> imageList = [
  "lib/assets/images/car.png",
  "lib/assets/images/image.png",
  "lib/assets/images/image1.png",
  "lib/assets/images/image2.png",
  "lib/assets/images/car4.png",
];

final List<String> assetImg = [
      "lib/assets/images/red.png",
      "lib/assets/images/purple.png",
      "lib/assets/images/orange.png",
      "lib/assets/images/red.png",


];


class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Layout(
        body: ListView(
          children: <Widget>[
            Text('Carousel', style: hintStyleTextblackbolder(),),
            SizedBox(
              height: 20,
            ),
            Text('Carousels are an awesome way to show a list of images. We will be using a plugin to show the carousel in flutter.', style: hintStyleTextblackdull(),),
            SizedBox(
              height: 30,
            ),
            Text('Full Width ',  style: hintStyleTextblackbold(),),
            SizedBox(height: 20,),

            GFCarousel(
              autoPlay: true,
              pagination: true,
              viewportFraction: 1.0,
              activeIndicator: getGFColor(GFColor.success),
              passiveIndicator: getGFColor(GFColor.dark),
              aspectRatio: 2.0,
              items: assetImg.map(
                    (url) {

                  return   GFImageOverlay(
//                    height: 200,
boxFit: BoxFit.fitWidth,
color: Colors.transparent,
//                        width: 300,
                    margin: EdgeInsets.only(left: 15, right: 15, bottom:30,),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    child: Padding(padding: EdgeInsets.only(top:30, left: 0),
                        child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                             Padding(padding: EdgeInsets.only(left: 30, right: 30, top: 130), child:
                            Text('Title', style: TextStyle(color: getGFColor(GFColor.white)),)
                            ),
                            Padding(padding: EdgeInsets.only(left: 30, right: 30, top: 20), child:
                            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                                ' sed do eiusmod tempor dolor sit amet, consectetur', textAlign:TextAlign.center, style: TextStyle( color: getGFColor(GFColor.light)),))
                          ],
                        )),
//                    colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.60), BlendMode.darken),
                    image: AssetImage(url),
                  );
                },
              ).toList(),
              onPageChanged: (index) {
                setState(() {
                  index;
                });
              },
            ),
            SizedBox(height: 20,),

            Text('Multiple Items',  style: hintStyleTextblackbold(),),
            SizedBox(height: 20,),

GFItemsCarousel(
              rowCount: 3,

              children: assetImg.map(
                    (url) {
                  return  GFImageOverlay(
                    height: 400,
                    width: 300,
                    margin: EdgeInsets.only(left: 15, right: 5),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    child: Padding(padding: EdgeInsets.only(left: 10),
                        child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                             Padding(padding: EdgeInsets.only(left: 230, right: 30, top: 220), child:
                            Text('Title', style: TextStyle(color: getGFColor(GFColor.white)),)
                            ),
                            Padding(padding: EdgeInsets.only(left: 30, right: 30, top: 0, bottom: 220), child:
                            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                                ' sed do eiusmod tempor dolor sit amet, consectetur', textAlign:TextAlign.center, style: TextStyle( color: getGFColor(GFColor.light)),))
                          ],
                        )),
                    image: AssetImage(url),
                  );
                },
              ).toList(),
            ),
            SizedBox(height: 20,),

            Text('Full Size',  style: hintStyleTextblackbold(),),
            SizedBox(height: 20,),

 GFCarousel(
              autoPlay: true,
              pagination: true,
              viewportFraction: 1.0,
              activeIndicator: getGFColor(GFColor.success),
              passiveIndicator: getGFColor(GFColor.white),
              aspectRatio: 2.0,
              items: assetImg.map(
                    (url) {

                  return   GFImageOverlay(
                    height: 200,
//                        width: 300,
                    margin: EdgeInsets.only(left: 15, right: 15),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    child: Padding(padding: EdgeInsets.only(top:30, left: 0),
                        child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(left: 30, right: 30, top: 130), child:
                            Text('Title', style: TextStyle(color: getGFColor(GFColor.white)),)
                            ),
                            Padding(padding: EdgeInsets.only(left: 30, right: 30, top: 20), child:
                            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                                ' sed do eiusmod tempor dolor sit amet, consectetur', textAlign:TextAlign.center, style: TextStyle( color: getGFColor(GFColor.light)),))
                          ],
                        )),
                    image: AssetImage(url),
                  );
                },
              ).toList(),
              onPageChanged: (index) {
                setState(() {
                  index;
                });
              },
            ),
            SizedBox(height: 20,),
            Text('Full Width',  style: hintStyleTextblackbold(),),
            SizedBox(height: 20,),

GFCarousel(
              autoPlay: true,
              pagination: true,
              viewportFraction: 1.0,
              activeIndicator: getGFColor(GFColor.success),
              passiveIndicator: getGFColor(GFColor.dark),
              aspectRatio: 2.0,
              items: imageList.map(
                    (url) {

                      return   GFImageOverlay(
                        height: 200,
//                        width: 300,
                      margin: EdgeInsets.only(left: 15, right: 15, bottom:30,),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        child: Padding(padding: EdgeInsets.only(top:30, left: 0),
                            child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                             Padding(padding: EdgeInsets.only(left: 30, right: 30, top: 130), child:
                            Text('Title', style: TextStyle(color: getGFColor(GFColor.white)),)
                            ),
                            Padding(padding: EdgeInsets.only(left: 30, right: 30, top: 20), child:
                            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                                ' sed do eiusmod tempor dolor sit amet, consectetur', textAlign:TextAlign.center, style: TextStyle( color: getGFColor(GFColor.light)),))
                          ],
                        )),
                        image: AssetImage(url),
                      );
                },
              ).toList(),
              onPageChanged: (index) {
                setState(() {
                  index;
                });
              },
            ),
                        SizedBox(height: 20,),
            Text('Multiple Items',  style: hintStyleTextblackbold(),),
            SizedBox(height: 20,),

              GFItemsCarousel(
              rowCount: 3,

              children: imageList.map(
                    (url) {
                  return  GFImageOverlay(
                    height: 400,
                        width: 300,
                    margin: EdgeInsets.only(left: 15, right: 5),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    child: Padding(padding: EdgeInsets.only(left: 10),
                        child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                              Padding(padding: EdgeInsets.only(left: 230, right: 30, top: 220), child:
                            Text('Title', style: TextStyle(color: getGFColor(GFColor.white)),)
                            ),
                            Padding(padding: EdgeInsets.only(left: 30, right: 30, top: 0, bottom: 220), child:
                            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                                ' sed do eiusmod tempor dolor sit amet, consectetur', textAlign:TextAlign.center, style: TextStyle( color: getGFColor(GFColor.light)),))
                          ],
                        )),
                    image: AssetImage(url),
                  );
                },
              ).toList(),
            ),
             SizedBox(height: 20,),
            Text('Full Size',  style: hintStyleTextblackbold(),),
            SizedBox(height: 20,),
            GFCarousel(
              autoPlay: true,
              pagination: true,
              viewportFraction: 1.0,
              activeIndicator: getGFColor(GFColor.success),
              passiveIndicator: getGFColor(GFColor.white),
              aspectRatio: 2.0,
              items: imageList.map(
                    (url) {

                  return   GFImageOverlay(
                    height: 200,
//                        width: 300,
                    margin: EdgeInsets.only(left: 15, right: 15),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    child: Padding(padding: EdgeInsets.only(top:30, left: 0),
                        child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                             Padding(padding: EdgeInsets.only(left: 30, right: 30, top: 130), child:
                            Text('Title', style: TextStyle(color: getGFColor(GFColor.white)),)
                            ),
                            Padding(padding: EdgeInsets.only(left: 30, right: 30, top: 20), child:
                            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                                ' sed do eiusmod tempor dolor sit amet, consectetur', textAlign:TextAlign.center, style: TextStyle( color: getGFColor(GFColor.light)),))
                          ],
                        )),
                    image: AssetImage(url),
                  );
                },
              ).toList(),
              onPageChanged: (index) {
                setState(() {
                  index;
                });
              },
            ),

            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}