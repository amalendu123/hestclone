import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CarouselView extends StatelessWidget {
  final String title;
  final String Imageid;
  const CarouselView({super.key, required this.title, required this.Imageid});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 66, 61, 61),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        color: Color.fromARGB(243, 67, 65, 65),
                      ),
                    ],
                  ),
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RotatedBox(
                                quarterTurns: 3,
                                child: Text(
                                  title,
                                  style: TextStyle(
                                    fontFamily: 'Titillium',
                                    color: Colors.white,
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                              Container(
                                height: 300,
                                width: 200,
                                child: Image.asset(
                                  'lib/images/$Imageid',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Join Hestia'23 workshops to gain valuable skills and knowledge in a collaborative learning environment.",
                          style: TextStyle(
                            fontFamily: 'Titillium',
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Check It Out ",
                                  style: TextStyle(
                                    fontFamily: 'Titillium',
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  Colors.yellow),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          bottomRight:
                                              Radius.elliptical(70, 20)),
                                      side: BorderSide(
                                        color: Colors.white,
                                      ))),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(
                fontFamily: 'Titillium',
                color: Colors.white,
                fontSize: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
