import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class VerticalSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        child: CarouselSlider(
          options: CarouselOptions(
            // aspectRatio: 2.5,
            // // enlargeCenterPage: true,
            // scrollDirection: Axis.horizontal,
            // autoPlay: true,




            height: 400,
            aspectRatio: 16/9,
            viewportFraction: 0.8,
            enlargeCenterPage: true,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
          ),
          items: imageSliders,
        ),
      ),
    );
  }
}

final List<String> imgList = [
  'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg/1280px-Good_Food_Display_-_NCI_Visuals_Online.jpg',
 'https://www.helpguide.org/wp-content/uploads/table-with-grains-vegetables-fruit-768.jpg ',
 'https://img.traveltriangle.com/blog/wp-content/uploads/2018/12/cover-for-street-food-in-sydney.jpg',
 'https://i1.wp.com/www.eatthis.com/wp-content/uploads/2020/10/fast-food.jpg?resize=640%2C360&ssl=1',
  'https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/2KL6JYQYH4I6REYMIWBYVUGXPI.jpg&w=691',
  'https://www.refrigeratedfrozenfood.com/ext/resources/NEW_RD_Website/DefaultImages/default-pasta.jpg?1430942591'
];
final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: InkWell(
            onTap: () {
              print(imgList.indexOf(item));
              print(item);
            },
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(item, fit: BoxFit.cover, width:1000),
                      Positioned(
                        // bottom: 0.0,
                        // left: 0.0,
                        // right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(0, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 10,
                                child: Icon(
                                  Icons.play_arrow,

                                  size: 15,
                                ),
                                backgroundColor:Color(0xffe5634d),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'No. ${imgList.indexOf(item)} image',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),),
            ),
          ),
        ),)
    .toList();
