import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommercepractice2/pages/product_details.dart';
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name":"Handsome",
      "picture":"images/TCS.jpg",
      "old_price":80,
      "price":100,
    },
    {
      "name":"Handsome1",
      "picture":"images/slideshow_1.jpeg",
      "old_price":90,
      "price":180,
    },
    {
      "name":"Handsome2",
      "picture":"images/slideshow_2.jpeg",
      "old_price":90,
      "price":190,
    },
    {
      "name":"Handsome3",
      "picture":"images/slideshow_5.jpeg",
      "old_price":90,
      "price":100,
    },
    {
      "name":"Handsome4",
      "picture":"images/slideshow_6.jpeg",
      "old_price":90,
      "price":130,
    },
    {
      "name":"Handsome5",
      "picture":"images/slideshow_2.jpeg",
      "old_price":90,
      "price":180,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context,int index){
        return Single_product(product_name: product_list[index]['name'], product_picture: product_list[index]['picture'],product_old_price: product_list[index]['old_price'],product_price: product_list[index]['price'],);

      },
    );
  }
}

class Single_product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  const Single_product({Key key, this.product_name, this.product_picture, this.product_old_price, this.product_price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(

      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails(product_detail_name: product_name,product_detail_picture: product_picture,product_detail_price: product_price,product_detail_old_price: product_old_price,))) ,
            child: GridTile(
              footer: Container(
                color: Colors.white,
                child: new Row(
                  children: <Widget> [
                    Expanded(
                      child: Text(product_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0,),),
                    ),
                    Text("Rs ${product_price}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)

                  ],
                )

              ),
              child: Image.asset(product_picture,
              fit: BoxFit.cover,),
            ),
          ),
        ),
      )
    );
  }
}

