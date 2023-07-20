import 'package:flutter/material.dart';

class Text_Feild extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final controller;
  

  const Text_Feild({super.key,
  required this.hintText, required this.obscureText, this.controller, 
  
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              decoration: InputDecoration(
              
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.black)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.brown
                  )
                ),
                fillColor: Colors.white,
                filled: true,
                hintText: hintText,
                
          
              ),
            ),
          );
  }
}