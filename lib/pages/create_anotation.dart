import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hub_central/config/preferences.dart';
import 'package:sizer/sizer.dart';

import '../config/handler.dart';

class CreateAnotation extends StatefulWidget {
  const CreateAnotation({super.key});

  @override
  State<CreateAnotation> createState() => CreateAnotationState();
}

final anotation = TextEditingController();

class CreateAnotationState extends State<CreateAnotation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Preferences().getBackgroundColor(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
          child: Column(
            children: [
              Handler().getMargin(null),
              Handler().createText("Novo", 70, null, null),
              Handler().getMargin(2),
              SizedBox(
                height: 90.sp,
                child: TextField(
                  onChanged: ((value) => setState(() {})),
                  controller: anotation,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: (anotation.text.isEmpty
                            ? Colors.red
                            : Colors.green),
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                    contentPadding: const EdgeInsets.all(8),
                    border: const OutlineInputBorder(),
                    fillColor: Colors.white,
                  ),
                  style: const TextStyle(
                      fontSize: 30, color: Colors.white, fontFamily: 'Lavinia'),
                  maxLines: 150,
                  minLines: 40,
                ),
              ),
              Handler().getMargin(null),
              Row(
                children: [Handler().createText("Categoria:", 30, null, null)],
              )
            ],
          ),
        ),
      ),
    );
  }
}
