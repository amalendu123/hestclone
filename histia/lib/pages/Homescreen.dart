import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:histia/Components/cards.dart';

import 'package:histia/Components/carouselView.dart';
import 'package:histia/pages/Home.dart';
import 'package:histia/pages/Schedule.dart';
import 'package:histia/pages/Splashscreen.dart';
import 'package:histia/pages/profile.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

final user = FirebaseAuth.instance.currentUser!;

class _HomescreenState extends State<Homescreen> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Schedule(),
    const Text(
      'Your message comes here',
    ),
    Profile(
      name: user.displayName!,
      imageId: user.photoURL!,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const Icon(Icons.person),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user.displayName!,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            const Text("WELCOME TO THE TIMELESS ODYSEY",
                style: TextStyle(
                  fontSize: 12,
                ))
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/images/back.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          child: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: FloatingNavbar(
          backgroundColor: Color.fromARGB(255, 66, 61, 61),
          items: [
            FloatingNavbarItem(
              icon: Icons.home,
            ),
            FloatingNavbarItem(icon: Icons.calendar_month_sharp),
            FloatingNavbarItem(icon: Icons.leaderboard),
            FloatingNavbarItem(icon: Icons.person),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
