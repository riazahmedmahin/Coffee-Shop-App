import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_app/const.dart';
import 'package:first_app/pages.dart/cart_page.dart';
import 'package:first_app/pages.dart/shop_page.dart';
import 'package:first_app/widgets.dart/buttom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex =0;
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  //------page------
  final List _pages = [
    ShopPage(),

    CartPage(),
  ];
  //--------firebase------
  final user = FirebaseAuth.instance.currentUser;
  void SignOut(){
    FirebaseAuth.instance.signOut();
  }
  //-------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(backgroundColor: Colors.black,

       ),




      drawer: Drawer(

        child: ListView(

          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(

              child: SingleChildScrollView(
                child: Column(

                  children: [
                    Column(
                      children: [
                        Image.asset('lib/images/LogoMakr.png',height: 100,),
                        SizedBox(height: 5,),
                      ],

                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Icon(Icons.person),
                        SizedBox(height: 20,),
                        Text(" "+ user!.email!,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ],
                ),
              ),

              decoration: BoxDecoration(
                color: Colors.brown[600],
              ),
            ),


            ListTile(

              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },

            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),

            ),
            ListTile(
              title: Text('profile'),
              leading: Icon(Icons.person_pin),

            ),


            SizedBox(height: 400,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Divider(thickness: 1,
                color: Colors.black,),
            ),

            ListTile(
              title: Text('Logout',style: TextStyle(fontWeight: FontWeight.bold),),
              leading: Icon(Icons.logout),
              onTap: SignOut,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Divider(thickness: 1,
                color: Colors.black,),
            ),

          ],
        ),
      ),








      backgroundColor: Colors.brown,
      bottomNavigationBar: Buttom_nab(
        onTabChange: (index) => navigateBottomBar(index),
        ),

      body: _pages[_selectedIndex],

    );
  }
}