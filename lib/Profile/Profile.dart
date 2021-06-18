import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swardhara_new/LoginPage/LoginPage.dart';
import 'package:swardhara_new/Themes/Provider.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool auth = true;

  @override
  void initState() {
    super.initState();

    if (!auth) {
      Timer(Duration(milliseconds: 100), () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
            );
          },
          child: Container(
            height: 40,
            margin: const EdgeInsets.all(5.0),
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.orange,
              ),
            ),
            child: Center(child: Text('LOGOUT')),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3.5,
            width: double.infinity,
            color: Colors.orange,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  child: CircleAvatar(
                    child: Icon(
                      Icons.person,
                      size: 50,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Sreeenivas",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              themeProvider.darkTheme = !themeProvider.darkTheme;
            },
            child: Card(
              elevation: 2.0,
              child: ListTile(
                title: Text("Theme"),
                subtitle: Text(
                  !themeProvider.darkTheme ? "Light Theme" : "Dark Theme",
                ),
                leading: Icon(
                  themeProvider.darkTheme ? Icons.dark_mode : Icons.light_mode,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              themeProvider.darkTheme = !themeProvider.darkTheme;
            },
            child: Card(
              elevation: 2.0,
              child: ListTile(
                title: Text("Mobile"),
                subtitle: Text("9876543210"),
                leading: Icon(
                  Icons.mobile_screen_share,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Card(
            elevation: 2.0,
            child: ListTile(
              title: Text("Plan"),
              subtitle: Text("Unlimited video streaming"),
              leading: Icon(
                Icons.card_travel_outlined,
                color: Colors.black,
              ),
            ),
          ),
          // Checkbox(
          //     value: true,
          //     onChanged: (b) {
          //       themeProvider.darkTheme = !themeProvider.darkTheme;
          //     }),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.topLeft,
            child: Text(
              "Paymenet History",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }
}
