import 'package:apiscontenidoadaptable/ui/utils/responsive.dart';
import 'package:apiscontenidoadaptable/ui/widgets/Login_form.dart';
import 'package:apiscontenidoadaptable/ui/widgets/circle.dart';
import 'package:apiscontenidoadaptable/ui/widgets/icon_hi.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final double pinkSize = responsive.wp(80);
    final double orangekSize = responsive.wp(65);
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SingleChildScrollView(
          child: Container(
          color: Colors.white,
          width: responsive.width,
          height: responsive.height,
          child: Stack(
            alignment: Alignment.center, children: [
            Positioned(
              top: -pinkSize * 0.3,
              right: -pinkSize * 0.35,
              child: Circle(
                size: responsive.hp(45),
                colors: [Colors.pink, Colors.pinkAccent],
              ),
            ),
            Positioned(
              top: -orangekSize * 0.35,
              left: -orangekSize * 0.28,
              child: Circle(
                size: responsive.hp(32),
                colors: [Colors.orange, Colors.deepOrangeAccent],
              ),
            ),
            Positioned(
                top: responsive.hp(25),
                child: Column(
                  children: [
                    IconHi(),
                    SizedBox(
                      height: responsive.dp(3),
                    ),
                    Text(
                      'Hello Again\nWelcome Back!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: responsive.dp(2.2)),
                    )
                  ],
                )),
            LoginForm()
          ]),
        ),
      ),
    ));
  }
}
