import 'package:flutter/material.dart';


class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {


  var cart_products = [
    {
      "name":"Handsome2",
      "picture":"images/slideshow_2.jpeg",
      "price":190,
      "quantity":1,
    },
    {
      "name":"Handsome3",
      "picture":"images/slideshow_5.jpeg",
      "price":100,
      "quantity":4,
    },
    {
      "name":"Handsome4",
      "picture":"images/slideshow_6.jpeg",
      "price":130,
      "quantity":8,
    },

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cart_products.length,
      itemBuilder: (context,index){
        return Single_cart_product(cart_product_name: cart_products[index]["name"],cart_product_picture: cart_products[index]["picture"],cart_product_price: cart_products[index]["price"],cart_product_quantity: cart_products[index]["quantity"],);
      },
    );
  }
}


class Single_cart_product extends StatelessWidget {
  final cart_product_name;
  final cart_product_picture;
  final cart_product_price;
  final cart_product_quantity;

  const Single_cart_product({Key key, this.cart_product_name, this.cart_product_picture, this.cart_product_price, this.cart_product_quantity}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(

      child: ListTile(

        leading: Image.asset(
          cart_product_picture,
          width: 80,
          height: 80,),
        title: Text(cart_product_name),
        subtitle: new Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text("Quantity:"),

                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("${cart_product_quantity}", style: TextStyle(color: Colors.black),),

                ),

              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text("Rs ${cart_product_price}",
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),),
            )
          ],
        ),
        trailing: Column(
          children: <Widget>[
            Expanded(
              child: IconButton(
                icon: Icon(Icons.arrow_drop_up),
                onPressed: (){},),
            ),
            Text("${cart_product_quantity}"),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.arrow_drop_down),
                onPressed: (){},),
            ),
          ],
        ),
      ),
    ) ;
  }
}
