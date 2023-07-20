//import 'dart:js_interop';

import 'package:first_app/models/coffee.dart';
import 'package:first_app/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CoffeeTile extends StatelessWidget {
  final Coffee coffee;

  void Function()? onPressed;
  final  Widget icon;
 
   CoffeeTile({super.key, required this.coffee, required this.onPressed, required this.icon,  }) {
   
  }

  @override
  Widget build(BuildContext context) {
 


    return  Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],borderRadius: BorderRadius.circular(12),
        ),
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 25),
      child: ListTile(
        
          title: Text(coffee.name),
          subtitle: Text(coffee.price),
          leading: Image.asset(coffee.imagepath),
          trailing: IconButton(icon: icon ,
          onPressed: onPressed,
          
          ),
      ),
   
    );
    
  }
}