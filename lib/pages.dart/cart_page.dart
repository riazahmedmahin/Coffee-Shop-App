import 'package:first_app/models/coffee.dart';
import 'package:first_app/models/coffee_shop.dart';
//import 'package:first_app/pages.dart/pay.dart';
import 'package:first_app/widgets.dart/coffee_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
} 

class _CartPageState extends State<CartPage> {

 void removeFromcart(Coffee coffee){
  Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
 }


 void payNow()
 {


 }

  @override
  Widget build(BuildContext context) {
///1111

///11111


    return Consumer<CoffeeShop>(
      builder: (context , value , child)=>  SafeArea(
      child: Padding(padding:EdgeInsets.all(25),
      child: Column(
        children: [
          Text('Your Cart',
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10,),
          Expanded(child: ListView.builder(
            itemCount: value.userCart.length,
            itemBuilder: (context , index){
            
              Coffee eachCoffee = value.userCart[index];

              return CoffeeTile(
                coffee: eachCoffee,
                 onPressed: () => removeFromcart(eachCoffee) , 
                 
                 icon: Icon(Icons.delete),
                 
                 );
              
          } ),



          ),


      
           GestureDetector(
            onTap: payNow, 
             
            child: Container(
              padding: EdgeInsets.all(25),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  'Pay Now',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
           )

        ]),
      
      ),
      ),
      
      );
  }
}