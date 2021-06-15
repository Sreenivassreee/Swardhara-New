import 'package:flutter/material.dart';

class Blogs extends StatelessWidget {
  const Blogs({Key? key}) : super(key: key);

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
        body: Container(
          child: ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int i) {
              return Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10, bottom: 2),
                child: Card(
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
                      padding: EdgeInsets.all(3),
                      height: 100,
                      width: double.infinity,
                      child: Row(
                        children: [

                          Container(
                            width: 100,
                            height: 100,

                            child: Image.network(
                              'https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/28900d086b2e2c94199c303c89b69a44_924x520.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(

                                  alignment: Alignment.topLeft,
                                  width: MediaQuery.of(context).size.width - 170,
                                  child: Text(
                                    "Music Literacy Mission",
                                    textAlign: TextAlign.start,
                                    style: new TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                        ),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  width: MediaQuery.of(context).size.width - 170,
                                  child: Text(
                                    "Alankar - Three Swar ascending and descending ",
                                    style: new TextStyle(
                                        fontSize: 12.0,   fontFamily: 'Roboto',),
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
        ));
  }
}
