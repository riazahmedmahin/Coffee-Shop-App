//import 'dart:js';

import 'package:first_app/models/coffee.dart';
import 'package:first_app/models/coffee_shop.dart';
import 'package:first_app/pages.dart/go_to_order.dart';
import 'package:first_app/pages.dart/homepage.dart';
import 'package:first_app/widgets.dart/coffee_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();


}

class _ShopPageState extends State<ShopPage> {


 void goToOrderPage (Coffee coffee){
 
 Navigator.push(context, MaterialPageRoute(builder: (context)=>gotoorder(
  coffee: coffee,

  
 ))); 
////

/////
 }


  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder: (context , value , child) => SafeArea(
      child: Padding(
        padding: EdgeInsets.all(25) ,
        child: Column(
          children: [
            Text("How would you like coffee?",

            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 25,),

            // list of coffee to buy
            Expanded(
              child: ListView.builder(
                itemCount: value.coffeeShop.length,
                itemBuilder: (context , index){
                   // get indivifual coffee 
                   Coffee eachCoffee = value.coffeeShop[index];
                   // return the tile for this coffee
                   return CoffeeTile(
                    coffee: eachCoffee,
                    icon: Icon(Icons.add),
                    onPressed: ()=> goToOrderPage(eachCoffee) ,
                    );

              }),
              )
          ]),
        ),
      ),
    ); 
  }
}