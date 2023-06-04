import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:histia/Components/cards.dart';

import 'package:histia/Components/carouselView.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PageController _pagecontroller;
  int _currentpage = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pagecontroller =
        PageController(initialPage: _currentpage, viewportFraction: 0.8);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pagecontroller.dispose();
  }

  List l = ["WORKSHOPS", "TECHNICAL", "CULTURALS"];
  List ima = ["ai.jpg", "Technical.jpg", "Culturals.jpg"];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/images/back.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "HIGHLIGHTS",
                style: TextStyle(
                  fontFamily: 'Titillium',
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Cards(),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Center(
                child: Text(
                  "EXPLORE EVENTS",
                  style: TextStyle(
                    fontFamily: 'Titillium',
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 800,
                child: Center(
                  child: PageView.builder(
                    itemCount: l.length,
                    physics: const BouncingScrollPhysics(),
                    controller: _pagecontroller,
                    itemBuilder: (context, index) {
                      return CarouselView(
                        title: l[index],
                        Imageid: ima[index],
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
