//import 'package:first_app/pages.dart/home.dart';
import 'package:first_app/models/coffee.dart';
import 'package:first_app/models/coffee_shop.dart';
import 'package:first_app/widgets.dart/authpage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
//import 'package:flutter_stripe/flutter_stripe.dart';
void main() async {
 WidgetsFlutterBinding.ensureInitialized();

 await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
 );

   runApp(const MyApp());
}



class MyApp extends StatelessWidget {

   //final Coffee coffee;
  const MyApp({super.key, });


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> CoffeeShop(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AuthPage(),
      ),
      );
  }
}


