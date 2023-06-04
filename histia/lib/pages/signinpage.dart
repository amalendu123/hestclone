import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Signind extends StatelessWidget {
  final Function()? ontap1;
  const Signind({
    super.key,
    required this.ontap1,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/images/back2.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(60.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 60,
                ),
                GestureDetector(
                  onTap: ontap1,
                  child: Image.asset(
                    'lib/images/google.png',
                    height: 40,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
