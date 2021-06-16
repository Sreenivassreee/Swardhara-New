import 'package:flutter/material.dart';
import 'package:swardhara_new/Youtube/Youtube%20Player.dart';

class SuggestedPage extends StatelessWidget {
  SuggestedPage({Key? key}) : super(key: key);
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
                    child: Hero(
                      tag: "123",
                      child: Image.network(
                        'https://imgmediagumlet.lbb.in/media/2019/01/5c3c6051e54eed62b2154427_1547460689639.jpg?fm=webp&w=750&h=500&dpr=1',
                        fit: BoxFit.cover,
                      ),
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
                          width: MediaQuery.of(context).size.width - 50,
                          child: Text(
                            'Lag Ja Gale',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
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
              alignment: Alignment.topLeft,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Lag Ja Gale",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
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
                        child: Text('Free'),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Lag Ja Gale - By Gauri Kavi\nGerms of Golden Era,HMG Group,May 2016.\nVenue - Shamukhananda Auditorium, MUmbai",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                    Divider(
                      height: 10,
                      color: Colors.deepOrange,
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
                'Suggested',
                style: TextStyle(
                  fontSize: 25,
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

                        },
                        child: Container(
                          width: double.infinity,
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(
                                    left: 5.0, right: 5, bottom:5,top: 5),
                                width: 100,
                                height: 140,
                                child: Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/c/c3/Sid_Sriram.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      alignment: Alignment.topLeft,
                                      width:
                                          MediaQuery.of(context).size.width - 150,
                                      child: Text(
                                        "Ae Meri Zohra",
                                        style: new TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      alignment: Alignment.topLeft,
                                      width:
                                          MediaQuery.of(context).size.width - 150,
                                      child: Text(
                                        "Ae Meri Zohra jab in -By Shurjo Bhbattacharya Gems of Golden Era,HMG Group ,May 2016",
                                        style: new TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: 'Roboto',
                                        ),
                                      ),
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
                                      child: Text('Free'),
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
