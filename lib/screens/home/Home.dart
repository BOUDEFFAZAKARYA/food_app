import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/utils/dimentions.dart';
import 'package:food_app/widgets/HomeCard.dart';
import 'package:food_app/widgets/Text.dart';

import '../../widgets/bodyHome.dart';
import '../../widgets/buttom_bar.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: CustomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: Dimentions.hight_20 * 2,
                  bottom: Dimentions.hight_10 / 2),
              padding: EdgeInsets.only(
                  right: Dimentions.hight_20, left: Dimentions.hight_20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      texts(
                        text: "Ain kechera",
                        color: Colors.teal[400],
                      ),
                      texts(
                        text: "salle 35",
                        color: Colors.black,
                        size: Dimentions.hight_10,
                      ),
                    ],
                  ),
                  Container(
                    width: Dimentions.hight_15 * 3,
                    height: Dimentions.hight_15 * 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.tealAccent[400],
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      onPressed: () => {},
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimentions.hight_20,
            ),
            const PageBody(),
            Container(
              margin: EdgeInsets.only(
                top: Dimentions.hight_10 / 2,
              ),
              padding: EdgeInsets.only(
                  right: Dimentions.hight_20, left: Dimentions.hight_20),
              child: Row(
                children: [
                  texts(
                    text: "Popular",
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: Dimentions.hight_15,
                  ),
                  texts(
                    text: ".Food pairing",
                    color: Colors.black87,
                    size: Dimentions.hight_10,
                  ),
                ],
              ),
            ),
            _listViews(),
          ],
        ),
      ),
    );
  }
}

Widget _listViews() {
  return ListView.builder(
    shrinkWrap: true,
    itemCount: 4,
    physics: NeverScrollableScrollPhysics(),
    itemBuilder: (context, position) {
      return const HomeCard();
    },
  );
}
