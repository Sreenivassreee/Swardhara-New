import 'package:flutter/material.dart';

class DetailedPage extends StatelessWidget {
  String? t = '1';
  DetailedPage({Key? key, this.t}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  child: Hero(
                    tag: (t!).toString(),
                    child: Image.network(
                      'https://www.creaticity.co.in/images/eventcity/upcoming/sid-sriram.jpg',
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
                          color: Colors.black,
                        ),
                        backgroundColor: Colors.orange,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 50,
                        child: Text(
                          'Complementary Volume - Free lessons to experience the learning ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
                        fontWeight: FontWeight.bold,
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
                        child: Text('Preemium'),
                      ),
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black,
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
                        left: 10.0, right: 10, bottom: 10),
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => DetailedPage(),
                        //   ),
                        // );
                      },
                      child: Container(
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
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    alignment: Alignment.topCenter,
                                    width:
                                        MediaQuery.of(context).size.width - 150,
                                    child: Text(
                                      "Alankar - Three Swar ascending and descending ",
                                      style: new TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
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
