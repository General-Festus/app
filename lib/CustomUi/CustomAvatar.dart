import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAvater extends StatelessWidget {
 final String image;
   Random rnd = Random();

   CustomAvater({Key key, this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Center(
          child: CircleAvatar(
            backgroundColor: Colors.white30,
            backgroundImage: NetworkImage(image),
          ),
        ),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                width: 3,
                color: Color.fromRGBO(
                    rnd.nextInt(255), rnd.nextInt(255), rnd.nextInt(255), 1))),
      ),
    );
  }
}

class AvaterDotted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:15.0),
      child:DottedBorder(
  borderType: BorderType.Circle,
  radius: Radius.circular(12),
  padding: EdgeInsets.all(6),
  child: ClipRRect(
    borderRadius: BorderRadius.all(Radius.circular(12)),
    child: Container(
    height: 50,
    width: 50,
    child: Center(
      child: FaIcon(
                  FontAwesomeIcons.plus,
                  color: Colors.black38,
                  size: 16,
                ),
    ),
   
    ),
  ),
)
    );
  }
}
