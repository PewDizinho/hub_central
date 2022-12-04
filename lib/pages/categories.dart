import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hub_central/config/handler.dart';
import 'package:hub_central/config/preferences.dart';
import 'package:sizer/sizer.dart';

import 'home.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Preferences().getBackgroundColor(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Spacer(),
                _getButton(
                  context,
                  Icons.category,
                  "Categorias",
                  () => {},
                ),
                const Spacer(),
                _getButton(
                    context, Icons.work_history_outlined, "WIP", () => {}),
                const Spacer(),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Spacer(),
                _getButton(
                    context, Icons.work_history_outlined, "WIP", () => {}),
                const Spacer(),
                _getButton(context, Icons.settings, "Config", () => {}),
                const Spacer(),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Center(
              child: _getButton(
                  context,
                  Icons.home,
                  "Home",
                  () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Home(),
                          ),
                        )
                      }),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _getButton(
    BuildContext context, IconData icon, String text, Function() tap) {
  double iconSize = 55.sp;
  double textSize = 14;
  var size = MediaQuery.of(context).size;
  return SizedBox(
    child: Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
          bottomLeft: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.black,
          borderRadius: BorderRadius.circular(20),
          onTap: tap,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon,
                  size: (size.height > size.width
                          ? (size.height / size.width)
                          : (size.width / size.height)) *
                      iconSize
                  // size.aspectRatio * iconSize,
                  ),
              Handler().createText(
                  text,
                  ((size.height > size.width
                          ? (size.height / size.width)
                          : (size.width / size.height)) *
                      textSize),
                  Colors.blue,
                  Colors.black)
            ],
          ),
        ),
      ),
    ),
  );
}
