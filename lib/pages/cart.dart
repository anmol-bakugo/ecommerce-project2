import 'package:flutter/material.dart';
import 'package:ecommercepractice2/components/cart_products.dart';


class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: Center(child: Text('cart')),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white), onPressed: (){}),

        ],
      ),
      body: CartProducts(),

      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text("Total:"),
                subtitle: Text("Rs 400"),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: (){},
                child: Text("check out",style: TextStyle(color: Colors.white),),
                color: Colors.green,
              ),
            ),
          ],
        )
      ),
    );
  }
}
