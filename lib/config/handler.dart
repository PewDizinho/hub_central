import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../pages/home.dart';

class Handler {
  createText(String text, double? size, Color? color, Color? shadow) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: "Lavinia",
          fontSize: size ?? 15,
          color: color ?? Colors.white,
          shadows: getShadows(shadow ?? Colors.black)),
    );
  }

  CurvedNavigationBar getNavBar(
      List? button1, List? button2, List? button3, BuildContext context) {
    int lastIndex = 1;
    return CurvedNavigationBar(
      index: lastIndex,
      backgroundColor: Colors.transparent,
      items: <Widget>[
        Icon((button1 != null ? (button1[0] ?? Icons.home) : Icons.home),
            size: 40),
        Icon((button2 != null ? (button2[0] ?? Icons.apps) : Icons.apps),
            size: 40),
        Icon(
            (button3 != null
                ? (button3[0] ?? Icons.notifications)
                : Icons.notifications),
            size: 40),
      ],
      onTap: (index) {
        if (lastIndex != index) {
          lastIndex = index;
          return;
        }
        switch (index) {
          case 0:
            if (button1 != null) {
              button1[1]();
            } else {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                  ModalRoute.withName('/'));
            }
            break;
          case 1:
            if (button2 != null) {
              button2[1]();
            } else {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                  ModalRoute.withName('/'));
            }
            break;
          case 2:
            if (button3 != null) {
              button3[1]();
            } else {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                  ModalRoute.withName('/'));
            }
            break;
        }
      },
      animationCurve: Curves.elasticOut,
      animationDuration: const Duration(milliseconds: 1800),
    );
  }

  getMargin(int? size) {
    return SizedBox(
      height: (size != null ? size.h : 3.h),
    );
  }

  List<Shadow> getShadows(Color cor) {
    return [
      Shadow(
        color: cor,
        blurRadius: 2,
        offset: Offset.fromDirection(1),
      ),
    ];
  }
}
