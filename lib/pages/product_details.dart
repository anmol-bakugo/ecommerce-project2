import 'package:flutter/material.dart';
import 'package:ecommercepractice2/main.dart';
import 'package:ecommercepractice2/pages/HomePage.dart';
class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_picture;
  final product_detail_old_price;
  final product_detail_price;

  const ProductDetails({Key key, this.product_detail_name, this.product_detail_picture, this.product_detail_old_price, this.product_detail_price}) : super(key: key);
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },
            child: Center(child: Text('KissanMitr'))
        ),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white), onPressed: (){})
        ],
      ),
      body: new ListView(
        children: <Widget> [
          new Container(
            height: 300.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.product_detail_picture),
                ),
                footer: new Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: new Text(widget.product_detail_name,
                    style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16.0),),
                    title: new Row(
                      children: <Widget> [
                        Expanded(
                          child: new Text("Rs ${widget.product_detail_old_price}",
                            style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),),
                        ),
                        Expanded(
                          child: new Text("Rs ${widget.product_detail_price}",
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          ////       =====================the first buttons====================


          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: new Text("Qty"),
                          content: new Text("Choose quantity"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                            child: new Text("close"),)
                          ],
                        );
                      }
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("quantity"),

                    ),
                    Expanded(child: new Icon(Icons.arrow_drop_down),)
                  ],
                ),),

              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(onPressed: (){},
                color: Colors.green,
                textColor: Colors.white,
                child:new Text("Buy now")
                )
              ),
              new IconButton(icon: Icon(Icons.add_shopping_cart),color: Colors.green,onPressed: (){},) ,
              new IconButton(icon: Icon(Icons.favorite_border),color: Colors.red,onPressed: (){}) ,
            ]
          ),

          Divider(),
          new ListTile(
            title: new Text("Product Details"),
            //subtitle: new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product name ", style: TextStyle(color: Colors.grey),),),
              Padding(padding: const EdgeInsets.all(5.0),
              child: new Text(widget.product_detail_name),)
            ],



          )
        ],
      ),
    );
  }
}

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

