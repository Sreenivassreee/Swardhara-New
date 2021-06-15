import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10),
          alignment: Alignment.topLeft,
          child: Text(
            "About Us",
            textAlign: TextAlign.right,
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),  
          child: Text(
            "Swardhara is a complete Music experience, created and envisioned for everyone. With Swargandhrva, an innovative muscle memory approach provides education based on principles of Hindustani Classical Music. Swarotsav brings choicest exhibits of artists performing musical gems. The team comprising of experienced performer like Gauri Kavi, supported ably by educationists, technology and media experts is very happy to be connected with everyone through Swardhara App. Please choose the product of your liking and enjoy the experience. Do let us know how you like them and how we can make the experience even better by writing to",
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
          ),
        ),
      ],
    );
  }
}
