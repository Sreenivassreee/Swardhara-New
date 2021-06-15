import 'package:flutter/material.dart';
import 'dart:io';

import 'package:swardhara_new/NavBarActions/NavBar.dart';
class Splash extends StatefulWidget {

  @override
  _SplashState createState() => _SplashState();
}


class _SplashState extends State<Splash> {

  @override
  void initState() {
    go();
    super.initState();
  }
  go(){
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NavBar()));

    });
  }
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: Center(
        child:Image.asset('assets/images/Logo-2.png')
      ),
    );
  }
}




//       Scaffold(
//       body: Center(
//         child:Image.asset('assets/images/Logo-2.png')
//       ),
//     );
//   }
// }