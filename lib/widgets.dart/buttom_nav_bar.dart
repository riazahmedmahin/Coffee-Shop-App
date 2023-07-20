import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Buttom_nab extends StatelessWidget {
  void Function(int)? onTabChange;
   Buttom_nab({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        color: Colors.grey[400],
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.black,
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 24,
        tabActiveBorder: Border.all(color: Colors.black),
        tabs: [
        GButton(icon: Icons.home,
        text: 'Home',
        ),
      
        GButton(icon: Icons.shopping_cart,
        text: 'Chart',),
    
      ]),
    );
  }
}