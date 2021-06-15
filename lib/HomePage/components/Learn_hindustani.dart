import 'package:flutter/material.dart';


class LearnHisdustaniMusic extends StatefulWidget {
  const LearnHisdustaniMusic({Key? key}) : super(key: key);

  @override
  _LearnHisdustaniMusicState createState() => _LearnHisdustaniMusicState();
}

class _LearnHisdustaniMusicState extends State<LearnHisdustaniMusic> {
  List li = [
    1,
    3,
    4,
    5,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (li.length * 180) + 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10,bottom: 10),
              child: Text(
                "Swargandhva - Learn Hindustani Music ",
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontFamily: 'Roboto',


                  fontSize: 15.0,

                ),
              ),
            ),
          ),
          Container(
            child: new ListView.builder(
              //Element-5
              shrinkWrap: true,
              primary: false,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: li.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10, bottom: 5),
                  child: Card(
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => DetailedPage(t: i.toString()),
                        //   ),
                        // );
                      },
                      child: Container(
                        height: 150,
                        width: double.infinity,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 100,
                              height: 135,
                              child: Image.network(
                                'https://www.creaticity.co.in/images/eventcity/upcoming/sid-sriram.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    alignment: Alignment.topCenter,
                                    width:
                                        MediaQuery.of(context).size.width - 150,
                                    child: Text(
                                      "Complementary Volume - Free lessons to experience the learning process",
                                      style: new TextStyle(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.0,

                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width - 150,
                                    child: Text(
                                      "Complementary Volume - Free lessons to experience the learning process",
                                      style: new TextStyle(
                                        fontSize: 10.0,
                                        fontFamily: 'Roboto',
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(5.0),
                                      padding: const EdgeInsets.all(4.0),
                                      decoration: BoxDecoration(
                                        color: Color(0xffe5634d),

                                        border: Border.all(

                                          color: Colors.orange,

                                        ),
                                      ),
                                      child: Text('Premium',style: TextStyle(color: Colors.white,                fontFamily: 'Roboto',),),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        '11 Lessons',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),

                        // child: ListTile(
                        // title:
                        // Text(
                        //     "Complementary Volume - Free lessons to experience the learning process"),
                        // subtitle: Text("free"),
                        // leading: Padding(
                        //   padding: const EdgeInsets.all(5.0),
                        //   child: Container(
                        //     height: 200,
                        //     width: 80,
                        //     child: Image.network(
                        //       'https://imgmediagumlet.lbb.in/media/2019/01/5c3c6051e54eed62b2154427_1547460689639.jpg?fm=webp&w=750&h=500&dpr=1',
                        //       fit: BoxFit.cover,
                        //     ),
                        //   ),
                        // )
                        // ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
