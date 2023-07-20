import 'package:first_app/pages.dart/home.dart';
import 'package:first_app/pages.dart/homepage.dart';
import 'package:first_app/pages.dart/regesterpage.dart';
import 'package:flutter/material.dart';

class RegPage extends StatefulWidget {
  const RegPage({super.key});

  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  // ---- ititially show login
  bool showHome= true;
  //------- toggle btw login and reg
  void togglePages(){
    setState(() {
      showHome=!showHome;
    });

  }



  @override
  Widget build(BuildContext context) {
    if(showHome){
      return Home(
          onTab: togglePages,
      );
    } else{
      return Regerter(
        onTab: togglePages,

      );
    }
  }
}
