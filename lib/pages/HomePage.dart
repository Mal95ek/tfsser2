
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.width;
    List<Image> images = [
      Image.asset("images/soura2.png"),
      (Image.asset("images/sour1.png")),
      (Image.asset("images/soura2.png")),
      (Image.asset("images/sour1.png")),
      (Image.asset("images/sour1.png")),];
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            'images/QuranPageBackground.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Stack(
          children: [

            Container(
              margin: EdgeInsets.only(bottom: 15),
              color: Colors.white,
              width: double.infinity,
              height: double.infinity,
            ),
            Stack(
              children: [
                Stack(children: [
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: _height *0.14
                    ),
                    child: Image.asset(
                      'images/QuranFramDesign_iPhone.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: _height * 0.25,
                    height: _height *1.3,
                    width: _width,
                    child: PageView.builder(
                      itemCount: images.length,
                      itemBuilder: (_, index) {
                        return images[index];
                      },
                    ),
                  ),
                  Stack(children: [
                    Positioned(
                      top: _height *0.16,
                      left: _width *0.16,
                      child: Image.asset('images/Sorabaqra1.png', fit: BoxFit.cover,width: _width *0.21,),)],),
                  Stack(children: [
                    Positioned(
                      top:  _height *0.16,
                      right: _width *0.16,
                      child: Image.asset('images/Joza1.png', fit: BoxFit.cover,width:  _width *0.21),)],),
                  Stack(
                    children: [
                      Positioned(
                          top: 23,
                          left: -5,
                          right: -5,
                          child: Container(
                              height: 45,
                              width: 45,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  (getRowButton((('images/playEnd1x.png')))),
                                  getRowButton((('images/play_all_icon.png'))),
                                  getRowButton((('images/search_icon.png'))),
                                  getRowButton((('images/ayaList.png'))),
                                  getRowButton((('images/list_icon.png'))),
                                  getRowButton((('images/bookmark_list_icon.png'))),
                                  getRowButton((('images/addBookMark_icon.png'))),
                                  getRowButton((('images/search_icon.png')))
                                ],
                              )))
                    ],
                  )
                ])
              ],
            )
          ],
        ),
      ],
    );
  }
}
Widget getRowButton(
    String image,
    ) {
  return Card(margin: EdgeInsets.zero, child: Image(image: AssetImage(image)));
}
