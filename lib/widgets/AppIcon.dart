import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/utils/dimentions.dart';

class appIcon extends StatelessWidget {
  appIcon({Key? key, required this.icon});

  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimentions.hight_20 * 2,
      width: Dimentions.hight_20 * 2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimentions.hight_15),
          color: Colors.grey[200]),
      child: Icon(
        icon,
        color: Color(0xFF756d54),
        size: Dimentions.hight_20,
      ),
    );
  }
}
