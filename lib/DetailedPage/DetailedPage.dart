import 'package:flutter/material.dart';
import 'package:swardhara_new/Youtube/Youtube%20Player.dart';

class DetailedPage extends StatelessWidget {

  DetailedPage({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>YoutubePage('p2lYr3vM_1w')));

              },
              child: Stack(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    child: Image.network(
                      'https://www.creaticity.co.in/images/eventcity/upcoming/sid-sriram.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left: 10,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          child: Icon(
                            Icons.play_arrow,

                          ),
                          backgroundColor: Colors.orange,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 65,
                          child: Text(
                            'Complementary Volume - Free lessons to experience the learning ',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',

                              fontSize: 15.0,

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Complementery Volume - Free Lessons to experience the learning process ",
                      style: TextStyle(
                        fontSize: 17,

                        fontFamily: 'Roboto',

                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.orange,
                          ),
                        ),
                        child: Text('Premium'),
                      ),
                    ),
                    Divider(
                      height: 10,

                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 10,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Videos',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Roboto',

                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                // physics: BouncingScrollPhysics(),

                primary: false,
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10, bottom: 1),
                    child: Card(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>YoutubePage('p2lYr3vM_1w')));

                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => DetailedPage(),
                          //   ),
                          // );
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 5.0, right: 5, bottom: 5,top: 5),
                          height: 100,
                          width: double.infinity,
                          child: Row(
                            children: [
                              Container(
                                width: 100,
                                height: 170,
                                child: Image.network(
                                  'https://static.toiimg.com/thumb/msid-75824261,width-800,height-600,resizemode-75,imgsize-530578,pt-32,y_pad-40/75824261.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0,top: 10),
                                    child: Container(
                                      alignment: Alignment.topCenter,
                                      width:
                                          MediaQuery.of(context).size.width - 170,
                                      child: Text(
                                        "Alankar - Three Swar ascending and descending ",
                                        style: new TextStyle(
                                          fontSize: 14.0,
                                       ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),


                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
