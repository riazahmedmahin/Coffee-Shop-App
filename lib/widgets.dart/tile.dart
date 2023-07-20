import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final String images;
  const Tile({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white10),
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey
        
        
      ),
      padding: EdgeInsets.all(6),
      
      child: Image.asset(images,
      height: 55,),
    );
  }
}