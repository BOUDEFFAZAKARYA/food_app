import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/utils/dimentions.dart';
import 'package:food_app/widgets/Text.dart';

class Expandable extends StatefulWidget {
  const Expandable({super.key, required this.text});

  final String text;

  @override
  State<Expandable> createState() => _ExpandableState();
}

class _ExpandableState extends State<Expandable> {
  late String firstHalf;
  late String secondHalf;

  bool hidentxt = true;

  double texthieght = Dimentions.ScreenHeight / 2.4;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > texthieght) {
      firstHalf = widget.text.substring(0, texthieght.toInt());

      secondHalf =
          widget.text.substring(texthieght.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: secondHalf.isEmpty
            ? texts(
                text: firstHalf,
                size: 10,
                overflow: TextOverflow.visible,
              )
            : Column(
                children: [
                  Text(
                    hidentxt ? firstHalf + "....." : firstHalf + secondHalf,
                    style: TextStyle(fontSize: 10),
                  ),
                  InkWell(
                    onTap: (() {
                      setState(() {
                        hidentxt = !hidentxt;
                      });
                    }),
                    child: Row(children: [
                      texts(
                        text: hidentxt ? "show more " : "show less",
                        color: Colors.teal,
                        size: 10,
                      ),
                      Icon(
                        hidentxt ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                        color: Colors.teal,
                      )
                    ]),
                  )
                ],
              ));
  }
}
