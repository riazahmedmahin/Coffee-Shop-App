//import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_app/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier  {
/////1111


int value=0;

intrement(){

  value++;
  notifyListeners();

}


////11111111
  final List<Coffee> _shop = [



    Coffee(
      name: 'Cold Coffee',
      price: '200 Tk',
      imagepath: 'lib/images/Cold.png',



      
          
    ),

     Coffee(
      name: 'Expresso',
      price: '320 TK',
      imagepath: 'lib/images/Espresso.png'
         
    ),



     Coffee(
      name: 'Black Coffee',
      price: "320 TK",
      imagepath: 'lib/images/Black Coffee.png'
         
    ),

     Coffee(
      name: 'Burger',
      price: '190 Tk ',
      imagepath: 'lib/images/starbuck.png'
         
    ),

     Coffee(
      name: 'Cold Coffee',
      price: '280 TK',
      imagepath: 'lib/images/Cold.png'
         
    ),
  
  
  ];


 //--------- user cart-----
 List<Coffee> _userCart = [];

 //---------get coffee list-------
 List<Coffee>get coffeeShop => _shop;
 

 //---------- get user cart-----

 List<Coffee> get userCart => _userCart;

 //------- add item to cart-------

 void addItemToCart(Coffee coffee){
  _userCart.add(coffee);
  notifyListeners();
 }
// remove item from cart

void removeItemFromCart(Coffee coffee){
  _userCart.remove(coffee);
  notifyListeners();
}







}