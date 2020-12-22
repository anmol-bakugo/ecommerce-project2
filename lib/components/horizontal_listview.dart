import 'package:flutter/material.dart';


class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(image_location: 'images/dress.png',image_caption: 'machinary',),
          Category(image_location: 'images/dress.png',image_caption: 'Produce',),
          Category(image_location: 'images/dress.png',image_caption: 'tools',),
          Category(image_location: 'images/dress.png',image_caption: 'analytics',),
          Category(image_location: 'images/dress.png',image_caption: 'drip',),
          Category(image_location: 'images/dress.png',image_caption: 'soil',),



        ],
      ),
    );
  }
}
class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  const Category({Key key, this.image_location, this.image_caption}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(
      onTap: (){},
      child: Container(
        width: 100.0,
        child: ListTile(
          title: Image.asset(image_location,
          width: 100.0,
          height: 50.0,),
          subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption)
          ),

        ),
      ),
    ),);
  }
}

