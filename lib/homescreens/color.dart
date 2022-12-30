import 'dart:math';
import 'package:flutter/material.dart';

class ColoringScreen extends StatefulWidget {
  const ColoringScreen({Key? key}) : super(key: key);
  @override
  _ColoringScreenState createState() => _ColoringScreenState();
}

List mycolors = <Color>[
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.purple,
  Colors.orange,
  Colors.indigo,
];
Color primaryColor = mycolors[0];

class _ColoringScreenState extends State<ColoringScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffFF5B00),
          title: Text("Coloring"),
        ),
        body: Center(
          child: Stack(
            children: [
              buildImage(),
              buildColorIcons(),
             // buildAmountTag(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImage() => Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    child: ColorFiltered(
      colorFilter: ColorFilter.mode(primaryColor, BlendMode.hue),
      child: Container(
        color: Colors.white,
        child: Transform.translate(
          offset: Offset(35, -30),
          child: Transform.rotate(
            angle: pi / -0.55,
            child: Image.asset(
              "asset/images/product.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    ),
  );

  Widget buildColorIcons() => Positioned(
    bottom: 35,
    right: 55,
    child: Row(
      children: [for (var i = 0; i < 6; i++) buildIconBtn(mycolors[i])],
    ),
  );

  Widget buildIconBtn(Color myColor) => Container(
    child: Stack(
      children: [
        Positioned(
          top: 12.5,
          left: 12.5,
          child: Icon(
            Icons.check,
            size: 20,
            color: primaryColor == myColor ? myColor : Colors.transparent,
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.circle,
            color: myColor.withOpacity(1),
            size: 30,
          ),
          onPressed: () {
            setState(() {
              primaryColor = myColor;
            });
          },
        ),
      ],
    ),
  );

  // Widget buildAmountTag() => Positioned(
  //   bottom: 125,
  //   left: 50,
  //   child: Container(
  //     child: Text(
  //       "\$25.00",
  //       style: TextStyle(
  //           color: primaryColor.withOpacity(0.65),
  //           fontSize: 30.00,
  //           fontWeight: FontWeight.w500),
  //     ),
  //   ),
  // );
}