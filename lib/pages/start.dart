import 'dart:math';

import 'package:flutter/material.dart';

import 'package:getwidget/getwidget.dart';
import 'package:hub_central/config/preferences.dart';

import 'home.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  void initState() {
    super.initState();
    startLoading(context);
  }

  void startLoading(BuildContext context) async {
    await Future.delayed(Duration(seconds: Random().nextInt(5) + 3), () {
      //
      setState(() {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const Home(),
          ),
          ModalRoute.withName('/'),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Preferences().getBackgroundColor(),
      child: GFLoader(
        type: GFLoaderType.android,
        size: GFSize.LARGE,
      ),
    );
  }
}
