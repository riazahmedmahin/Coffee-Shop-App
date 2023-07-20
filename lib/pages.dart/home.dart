//import 'package:first_app/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_app/widgets.dart/button.dart';
import 'package:first_app/widgets.dart/textfield.dart';
import 'package:first_app/widgets.dart/tile.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final Function()? onTab;
  Home({super.key,required this.onTab}) {

  }

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();
  

  void SignIn() async {

  showDialog(
    context: context, 
    builder: (context){
     return Center(
      child: CircularProgressIndicator(),
     );
    }
  
  );



    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email : emailController.text,
      password : passwordController.text,
    );

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Colors.brown,
     // appBar: AppBar(
        //backgroundColor: Colors.black,
       // elevation: 0,
      //),

      body: SingleChildScrollView(
        child: Column(


          children: [
            SizedBox(height: 30,),

            Image.asset('lib/images/LogoMakr.png',
            height: 300,),
            Image.asset("lib/images/riaz1.png",height: 60,),
            SizedBox(height: 15,),
            //----------email-----------
            SizedBox(height: 5,),

            Text_Feild(
              controller: emailController,
              hintText: 'Email', 
              obscureText: false, ),
            //----------password--------
            SizedBox(height: 10,),
            Text_Feild(
              controller: passwordController,
              hintText: 'Password',
             obscureText: true,
          
             ),

          
          

             //----Text--------
             SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Text('Forget password?'),
                 ],
               ),
             ),
            //--------------Button-------------

            SizedBox(height: 20,),
            Button(
              onTap: SignIn, text: 'Login',
            ),
            //----------- Icon---------
             SizedBox(height: 20,),
             // ---------- devider---------

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                  ),
                  Text(' or login with '),
                     Expanded(
                    child: Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                  ),
                ],
               ),
             ),

             //---------------button----------
             SizedBox(height: 30,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Tile(images: 'lib/images/apple.png',),
                 SizedBox(width: 20,),
                 Tile(images: "lib/images/google.png"),

                ],
               
             ),

//-------------------------text -------------------

         SizedBox(height: 30,),
              Center(
               child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
              
                children: [
                  
                  Text('not a member?',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 12),),
                  GestureDetector(
                    onTap: widget.onTab,
                      child: Text(' Register',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 12),))
                ],
               ),
             )




          ]
          ),
      ),
   
    );
  }
}