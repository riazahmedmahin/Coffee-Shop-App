import 'package:first_app/models/coffee.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/coffee_shop.dart';


class gotoorder extends StatefulWidget {

final Coffee coffee;

  const gotoorder({super.key, required this.coffee});

  @override
  State<gotoorder> createState() => _gotoorderState();
}

class _gotoorderState extends State<gotoorder> {


double sweetValue = 0.5;
void customizeSweet(double newValue){
     setState(() {
       sweetValue = newValue;
     });
}
///----------
double iceValue = 0.5;
void customizeIce(double newValue){
     setState(() {
       iceValue = newValue;
     });
}

//---------

double pearValue = 0.5;
void customizePera(double newValue){
     setState(() {
       pearValue = newValue;
     });
}

//-----------

void addTocart( )
{
  
Provider.of<CoffeeShop>(context,listen: false).addItemToCart(widget.coffee);
Navigator.pop(context);
showDialog(context: context, 

builder: (context)=>  CupertinoActionSheet(

   message: Text("Mahin's Coffee shop",style: TextStyle(color: Colors.black, ),),
   actions: [
    CupertinoActionSheetAction(onPressed: (){}, child: Text('successfully added to cart'))
   ],

    ),

);
 
}
///---------


  @override
  Widget build(BuildContext context) {

//////111111

final Prodata = Provider.of<CoffeeShop>(context);

////////111111


    return Scaffold(
      appBar: AppBar(title: Text(widget.coffee.name,),backgroundColor: Colors.black,),
      backgroundColor: Colors.brown[200],
      body: SingleChildScrollView(
        child: Column(
          
          children: [
            Image.asset(widget.coffee.imagepath),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sweet'),
                      Expanded(
                        child: Slider(
                          value: sweetValue, 
                          label: sweetValue.toString(),
                          divisions: 4,
                          onChanged: (value)=> customizeSweet(value)
                        ),
                      )
                    ],
                  ),
            
                  //----------------
            
                 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Ice     '),
                      Expanded(
                        child: Slider(
                          value: iceValue, 
                          label: iceValue.toString(),
                          divisions: 4,
                          onChanged: (value)=> customizeIce(value)
                        ),
                      )
                    ],
                  ),
            
                    //---------------------

                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('pear  '),
                      Expanded(
                        child: Slider(
                          value: pearValue, 
                          label: pearValue.toString(),
                          divisions: 4,
                          onChanged: (value)=> customizePera(value)
                        ),
                      )
                    ],
                  ),


////////////111111111111

                Center(

                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Center(
                          child: Text(Prodata.value.toString(),style: TextStyle(fontSize: 30),)),
                      FloatingActionButton(onPressed: (){

                        Prodata.intrement();
                      }, backgroundColor: Colors.brown,
                      child: Icon(Icons.add,color: Colors.white,),

                      )
                    ],
                  ),
                )
////111111111111111

            
                ],
              ),
            ),
         SizedBox(height: 30,),
         MaterialButton(

         height: 50,

          child: Text('Add to cart ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),

          ),

          color: Colors.brown,
          onPressed: addTocart

          )

          ],
        ),
      ),

    );
}
}