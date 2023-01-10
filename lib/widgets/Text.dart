import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/utils/dimentions.dart';

class texts extends StatelessWidget {
  Color? color;

  final String text;

  double size;

  TextOverflow overflow;

  texts(
      {super.key,
      required this.text,
      this.color,
      this.size = 0,
      this.overflow = TextOverflow.ellipsis});

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 1,
      text,
      style: TextStyle(
        color: color,
        fontSize: size == 0 ? Dimentions.hight_20 : size,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
