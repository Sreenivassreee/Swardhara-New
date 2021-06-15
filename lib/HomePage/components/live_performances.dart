import 'package:flutter/material.dart';

class LivePerformances extends StatefulWidget {
  const LivePerformances({Key? key}) : super(key: key);

  @override
  _LivePerformancesState createState() => _LivePerformancesState();
}

class _LivePerformancesState extends State<LivePerformances> {
  List food=["https://www.nia.nih.gov/themes/nia/images/woyp/woyp-fruitjuice.jpg","https://www.nia.nih.gov/themes/nia/images/woyp/woyp-driedfruit.jpg","https://www.nia.nih.gov/themes/nia/images/woyp/woyp-cantaloupe.jpg","https://www.nia.nih.gov/themes/nia/images/woyp/woyp-peach.jpg","https://www.nia.nih.gov/themes/nia/images/woyp/woyp-driedfruit.jpg","https://www.nia.nih.gov/themes/nia/images/woyp/woyp-grapes.jpg","https://www.nia.nih.gov/themes/nia/images/woyp/woyp-bread.jpg","https://www.nia.nih.gov/themes/nia/images/woyp/woyp-cereal.jpg"];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 15,bottom: 5,top: 20),
            child: Text(
              "Swarotsav - Live Performances",
              textAlign: TextAlign.start,
              style: TextStyle(

                fontFamily: 'Roboto',
                fontSize: 15.0,
              ),
            ),
          ),
        ),
        Container(
          height: 150,
          child: Center(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: food.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => SuggestedPage(),
                    //   ),
                    // );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 130,
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.network(
                         food[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
