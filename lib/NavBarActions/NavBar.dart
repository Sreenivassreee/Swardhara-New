import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swardhara_new/Blogs/Blog.dart';
import 'package:swardhara_new/Curriculum/curriculum.dart';
import 'package:swardhara_new/HomePage/homepage.dart';
import 'package:swardhara_new/Profile/Profile.dart';
import 'package:swardhara_new/Youtube/Youtube%20Player.dart';


class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _pageIndex = 0;
  PageController _pageController = PageController();
  bool auth = true;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._pageIndex = page;
    });
  }

  void onTabTapped(int index) {
    this._pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  var _widgetOptions = <Widget>[
    HomePage(),

    Curriculum(),
    Blogs(),
    Profile(),

    // Text(
    //   'Index 1: Curriculum',
    //   style: optionStyle,
    // ),
    // Text(
    //   'Index 2: Profile',
    //   style: optionStyle,
    // ),
    // Text(
    //   'Index 3: Settings',
    //   style: optionStyle,
    // ),
    // Profile()
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoTabScaffold(
          tabBar: CupertinoTabBar(items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.table),),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.book),),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),)
          ]),
          tabBuilder: (context, index) {
            switch (index) {
              case 0:
                return HomePage();
                break;
              case 1:
                return Curriculum();
                break;
              case 2:
                return Blogs();
                break;
              default:
                return Profile();
                break;
            }
          });
    } else
      return Scaffold(
        body: PageView(
            children: _widgetOptions,
            onPageChanged: onPageChanged,
            controller: _pageController,
            physics: new NeverScrollableScrollPhysics()),
        // Center(
        //   child:_widgetOptions.elementAt(_selectedIndex),
        // ),

        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _pageIndex,
          // backgroundColor: Color(0xff121212),
          unselectedItemColor: Colors.grey,
          // backgroundColor: Colors.white,
          elevation: 20,
          selectedItemColor: Colors.deepOrange,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
              label: 'Curriculum',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit),
              label: 'Blog',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile',
            ),

          ],
          // currentIndex: _selectedIndex,
        ),
      );
  }
}