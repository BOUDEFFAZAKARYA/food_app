import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/utils/dimentions.dart';
import 'package:food_app/widgets/Text.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: Dimentions.hight_15,
          right: Dimentions.hight_15,
          left: Dimentions.hight_15),
      child: Card(
        child: Row(children: [
          Container(
            height: Dimentions.pageviewTextContainer,
            width: Dimentions.ScreenWeight / 3.6,

            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/salad2.webp"),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  top: Dimentions.hight_15, left: Dimentions.hight_15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  texts(
                    color: Colors.black,
                    text: "Chiken Breasts dvsvsv ",
                  ),
                  SizedBox(
                    height: Dimentions.hight_10,
                  ),
                  texts(
                    color: Colors.grey[850],
                    text: "with indian special J<CKHVSK breasts yes meend",
                    size: Dimentions.hight_10,
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
                          SizedBox(
                            height: Dimentions.hight_15,
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
        ]),
      ),
    );
  }
}
