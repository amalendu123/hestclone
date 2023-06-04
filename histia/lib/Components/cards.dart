import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 130,
        width: 130,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("lib/images/hestia.jpg"),
            fit: BoxFit.cover,
          ),
          border: Border.all(
            color: Colors.black,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(2)),
        ),
      ),
    ]);
  }
}
