import 'package:flutter/material.dart';

class Curriculum extends StatelessWidget {
  const Curriculum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
            height:100,
            child: Image.asset('assets/images/Logo-2.png')),
        // backgroundColor: Colors.black,
        // backgroundColor:Color(0xffe5634d),
      ),
      body: Center(
        child: Text("You havent subscribe for any curriculum yet"),
      ),
    );
  }
}
