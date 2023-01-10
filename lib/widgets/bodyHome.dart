import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/screens/Detail/PopularDetail.dart';
import 'package:food_app/utils/dimentions.dart';

import 'Text.dart';

class PageBody extends StatefulWidget {
  const PageBody({super.key});

  @override
  State<PageBody> createState() => _PageBodyState();
}

class _PageBodyState extends State<PageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currentPageValue = 0.0;
  double _scaleFactor = 0.8;
  var _height = Dimentions.pageviewContainer;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(Dimentions.pageviewContainer);

    print(Dimentions.PageView);

    print(Dimentions.ScreenHeight);

    return Column(
      children: [
        Container(
          // color: Colors.red,
          height: Dimentions.PageView,
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            },
          ),
        ),
        DotsIndicator(
          dotsCount: 5,
          position: _currentPageValue,
          decorator: DotsDecorator(
            activeColor: Colors.teal,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();

    if (index == _currentPageValue.floor()) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;

      matrix = Matrix4.diagonal3Values(1, currScale, 1);

      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;

      matrix = Matrix4.diagonal3Values(1, currScale, 1);

      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() - 1) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 0);
    }

    return InkWell(
      child: Transform(
        transform: matrix,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 5, right: 5),
              height: Dimentions.pageviewContainer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index.isEven ? Colors.tealAccent[400] : Colors.black,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/salad2.webp"),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(
                    left: Dimentions.hight_10 + Dimentions.hight_15,
                    right: Dimentions.hight_10 + Dimentions.hight_15,
                    bottom: Dimentions.hight_15),
                height: Dimentions.pageviewTextContainer,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFFe8e8e8),
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5, 0),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(5, 0),
                    ),
                  ],
                ),
                child: Container(
                  padding: EdgeInsets.only(
                      top: Dimentions.hight_15,
                      right: Dimentions.hight_15,
                      left: Dimentions.hight_15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      texts(
                        color: Colors.black,
                        text: "Chiken Breast ",
                      ),
                      SizedBox(
                        height: Dimentions.hight_10,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(
                                5,
                                (index) => Icon(
                                      Icons.star,
                                      color: Colors.green,
                                      size: Dimentions.hight_15,
                                    )),
                          ),
                          SizedBox(
                            width: Dimentions.hight_10,
                          ),
                          texts(
                            color: Colors.grey[850],
                            text: "4.5",
                            size: Dimentions.hight_10,
                          ),
                          SizedBox(
                            width: Dimentions.hight_15,
                          ),
                          texts(
                            color: Colors.grey[850],
                            text: "1287 comments ",
                            size: Dimentions.hight_10,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Dimentions.hight_15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.amber[700],
                              ),
                              texts(
                                color: Colors.grey[850],
                                text: "Normal",
                                size: Dimentions.hight_10,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.man_sharp,
                                color: Colors.green[700],
                              ),
                              texts(
                                color: Colors.grey[850],
                                text: "1.7km",
                                size: Dimentions.hight_10,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.punch_clock,
                                color: Colors.red[700],
                              ),
                              texts(
                                color: Colors.grey[850],
                                text: "32min",
                                size: Dimentions.hight_10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: (() {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PopularDetail()),
        );
      }),
    );
  }
}
