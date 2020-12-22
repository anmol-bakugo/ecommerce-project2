import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:ecommercepractice2/components/horizontal_listview.dart';
import 'package:ecommercepractice2/components/products.dart';
import 'package:ecommercepractice2/pages/cart.dart';




class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/rsz_slideshow_1.jpg'),
          AssetImage('images/rsz_slideshow_2.jpg'),
          AssetImage('images/slideshow_1.jpeg'),
          AssetImage('images/slideshow_2.jpeg'),
          AssetImage('images/slideshow_5.jpeg'),
          AssetImage('images/slideshow_6.jpeg'),

        ],
        dotSize: 4.0,
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: Center(child: Text('KissanMitr')),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white), onPressed: (){}),
          new IconButton(
              icon: Icon(Icons.shopping_cart,color: Colors.white),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ShoppingCart()));

              })
        ],
      ),

      // my drawer when to adjust
      drawer: new Drawer(
        child: new ListView(
          children: <Widget> [
            // header
            new UserAccountsDrawerHeader(
              accountName: Text('anmol'),
              accountEmail: Text('anmolreddy@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,color: Colors.white,),),
              ),
              decoration: new BoxDecoration(
                color: Colors.green,
              ),
            ),
            // body
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),

              ),

            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),

              ),

            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My orders'),
                leading: Icon(Icons.shopping_bag),

              ),

            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ShoppingCart()));
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart),

              ),

            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite),

              ),

            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),

              ),

            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help),

              ),

            ),

          ],
        ),
      ),
      body: new ListView(
        children: <Widget> [
          image_carousel,

          // row view --> change to youtube style tags
          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),),
          HorizontalList(),

          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Recent Products'),),

          //grid view
          Container(
            height: 320.0,
            child: Products(),
          )

        ],

      ),
    );
  }
}