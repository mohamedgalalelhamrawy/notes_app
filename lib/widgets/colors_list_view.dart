

import 'package:flutter/material.dart';


class coloritem extends StatelessWidget {
  const coloritem({super.key, required this.isactive, required this.color});

  final bool isactive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: isactive
          ?  CircleAvatar(
              radius: 38,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 34,
                backgroundColor: color,
              ),
            )
          :  CircleAvatar(
              radius: 34,
              backgroundColor: color,
            ),
    );
  }
}


class colorslistview extends StatefulWidget {
  const colorslistview({super.key});

  @override
  State<colorslistview> createState() => _colorslistviewState();
}

class _colorslistviewState extends State<colorslistview> {
  List<Color> colors = [
    Color(0xff4a80f5),
    Color(0xff9bbff4),
    Color(0xffa7cdf2),
    Color(0xffbbdaa4),
    Color(0xfff18d00),
  ];
  int currentitem = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentitem = index;
              setState(() {});
            },
            child: coloritem(
              color: colors[index],
              isactive: currentitem == index,
            ),
          );
        },
      ),
    );
  }
}
