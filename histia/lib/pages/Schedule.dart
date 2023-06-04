import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:histia/Components/timeline.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
          child: Container(
        child: Column(
          children: [
            const Text(
              "SCHEDULE",
              style: TextStyle(
                fontFamily: 'Titillium',
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 60,
                  height: 70,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Color.fromARGB(255, 52, 50, 39),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "27",
                        style: TextStyle(
                          fontFamily: 'Titillium',
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "Thu",
                        style: TextStyle(
                          fontFamily: 'Titillium',
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 60,
                  height: 70,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Color.fromARGB(255, 224, 203, 16),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "28",
                        style: TextStyle(
                          fontFamily: 'Titillium',
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "Fri",
                        style: TextStyle(
                          fontFamily: 'Titillium',
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 60,
                  height: 70,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Color.fromARGB(255, 52, 50, 39),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "29",
                        style: TextStyle(
                          fontFamily: 'Titillium',
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "Sat",
                        style: TextStyle(
                          fontFamily: 'Titillium',
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 60,
                  height: 70,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Color.fromARGB(255, 52, 50, 39),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "30",
                        style: TextStyle(
                          fontFamily: 'Titillium',
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "Sun",
                        style: TextStyle(
                          fontFamily: 'Titillium',
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Timeline(
              children: <Widget>[
                Container(
                  height: 200,
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      const Text(
                        "9:00 AM",
                        style: TextStyle(
                          fontFamily: 'Titillium',
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          height: 100,
                          width: 300,
                          child: Image.asset(
                            'lib/images/mrhestia.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      const Text(
                        "9:00 AM",
                        style: TextStyle(
                          fontFamily: 'Titillium',
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          height: 100,
                          width: 300,
                          child: Image.asset(
                            'lib/images/brain.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  color: Colors.transparent,
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 80,
                        ),
                        const Text(
                          "9:00 AM",
                          style: TextStyle(
                            fontFamily: 'Titillium',
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            height: 100,
                            width: 300,
                            child: Image.asset(
                              'lib/images/quill.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(height: 100, color: Colors.transparent),
              ],
              indicators: <Widget>[
                Icon(
                  Icons.circle,
                  color: Colors.grey,
                  size: 10,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.grey,
                  size: 10,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.grey,
                  size: 10,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.grey,
                  size: 10,
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
