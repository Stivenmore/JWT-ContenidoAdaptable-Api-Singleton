import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconHi extends StatelessWidget {
  const IconHi({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 20,
            offset: Offset(0, 15),
          )
        ],
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      height: 100,
      width: 100,
      padding: EdgeInsets.all(20),
      child: Center(
          child: SvgPicture.asset(
        'assets/hi.svg',
        height: 70,
        width: 70,
      )),
    );
  }
}
