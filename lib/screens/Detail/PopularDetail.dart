import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/utils/dimentions.dart';
import 'package:food_app/widgets/HomeCard.dart';
import 'package:food_app/widgets/Text.dart';
import 'package:food_app/widgets/expandable_txt.dart';

import 'package:food_app/widgets/AppIcon.dart';

class PopularDetail extends StatefulWidget {
  const PopularDetail({super.key});

  @override
  State<PopularDetail> createState() => _PopularDetailState();
}

class _PopularDetailState extends State<PopularDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimentions.ScreenHeight / 2.2,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/salad2.webp"),
                ),
              ),
            ),
          ),
          Positioned(
              left: Dimentions.hight_10,
              right: Dimentions.hight_10,
              child: Container(
                padding: EdgeInsets.only(top: Dimentions.hight_20 * 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: appIcon(
                        icon: Icons.arrow_back,
                      ),
                      onTap: (() {
                        Navigator.pop(context);
                      }),
                    ),
                    appIcon(icon: Icons.shopping_cart)
                  ],
                ),
              )),
          Positioned(
            left: 0,
            top: Dimentions.ScreenHeight / 2.5,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              width: Dimentions.ScreenWeight,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  texts(
                    color: Colors.black,
                    text: "Chiken Breasts  ",
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
                  SizedBox(
                    height: Dimentions.hight_15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      texts(
                        text: "introduce",
                        size: 20,
                      ),
                      SizedBox(
                        height: Dimentions.hight_10,
                      ),
                      SingleChildScrollView(
                        child: Container(
                          height: Dimentions.ScreenHeight / 3.4,
                          child: SingleChildScrollView(
                            child: Expandable(
                                text:
                                    "kens are called hens. Hens are usually brown or white. Both males and females have one or two wattles. A wattle is Chickens have short wings and a heavy body. This makes it hard for them to fly very far. Male chickens are called roosters. Roosters often have brightly colored feathers. They can be red, green, brown, black, or other colors. Female chickens are called hens. Hens are usually brown or white. Both males and females have one or two wattles. A wattle is skin that hangs from the throat. Male and female chickens also have a comb, which is skin that sticks up from the top of the head. skin that hangs from the throat. Male and female chickens also have a comb, which is skin that sticks up from the top of the head.Chickens have short wings and a heavy body. This makes it hard for them to fly very far. Male chickens are called roosters. Roosters often have brightly colored feathers. They can be red, green, brown, black, or other colors. Female chickens are called hens. Hens are usually brown or white. Both males and females have one or two wattles. A wattle is skin that hangs from the throat. Male and female chickens also have a comb, which is skin that sticks up from the top of the head.Chickens have short wings and a heavy body. This makes it hard for them to fly very far. Male chickens are called roosters. Roosters often have brightly colored feathers. They can be red, green, brown, black, or other colors. Female chickens are called hens. Hens are usually brown or white. Both males and females have one or two wattles. A wattle is skin that hangs from the throat. Male and female chickens also have a comb, which is skin that sticks up from the top of the head.Chickens have short wings and a heavy body. This makes it hard for them to fly very far. Male chickens are called roosters. Roosters often have brightly colored feathers. They can be red, green, brown, black, or other colors. Female chickens are called hens. Hens are usually brown or white. Both males and females have one or two wattles. A wattle is skin that hangs from the throat. Male and female chickens also have a comb, which is skin that sticks up from the top of the head."),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
          padding: EdgeInsets.only(
              bottom: Dimentions.hight_15,
              top: Dimentions.hight_15,
              left: Dimentions.hight_10,
              right: Dimentions.hight_10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimentions.hight_15),
              topRight: Radius.circular(Dimentions.hight_15),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(Dimentions.hight_15),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 24, 24, 24),
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    ),
                    BoxShadow(
                      color: Color.fromARGB(255, 50, 50, 50),
                      offset: Offset(-5, 0),
                    ),
                    BoxShadow(
                      color: Color.fromARGB(255, 46, 46, 46),
                      offset: Offset(5, 0),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: (() {}),
                        icon: Icon(
                          Icons.plus_one,
                          color: Colors.white,
                          size: 19,
                        )),
                    SizedBox(
                      height: Dimentions.hight_15,
                    ),
                    texts(
                      text: "0",
                      size: 19,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: Dimentions.hight_15,
                    ),
                    IconButton(
                        onPressed: (() {}),
                        icon: Icon(
                          Icons.plus_one,
                          color: Colors.white,
                          size: 19,
                        )),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(Dimentions.hight_15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.teal,
                        blurRadius: 5,
                        offset: Offset(0, 5),
                      ),
                      BoxShadow(
                        color: Colors.teal,
                        offset: Offset(-5, 0),
                      ),
                      BoxShadow(
                        color: Colors.teal,
                        offset: Offset(5, 0),
                      ),
                    ]),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent),
                  child: texts(
                    text: "23\$  Add to card ",
                    color: Colors.white,
                    size: 19,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          )),
    );
  }
}
