import 'package:flutter/material.dart';
import 'package:hub_central/config/handler.dart';
import 'package:sizer/sizer.dart';
import '../config/preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int lastIndex = 1;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //
        backgroundColor: Preferences().getBackgroundColor(),
        bottomNavigationBar: Handler().getNavBar(null, null, null, context),
        body: Center(
          child: Column(
            children: [
              Handler().getMargin(null),
              Handler().createText("Bem-Vindo Paulo!", 50, null, null),
              Row(
                children: [
                  SizedBox(
                    width: 50.w,
                    height: 50.h,
                    child: Container(
                      margin: const EdgeInsets.all(15.0),
                      padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50.w,
                    height: 50.h,
                    child: Container(
                      margin: const EdgeInsets.all(15.0),
                      padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              CircleAvatar(
                radius: 30.sp,
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: const Icon(Icons.add),
                  iconSize: 55.sp,
                  onPressed: () {},
                ),
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ));
  }
}
