
import 'dart:async';

import 'package:flutter/material.dart';

import 'login.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  home: SplashPage(),));
}

class SplashPage extends StatefulWidget{
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override


  @override

  Widget build(BuildContext context) {   return Scaffold(
     body: Container(
       decoration: const BoxDecoration(

           image: DecorationImage(fit: BoxFit.cover,
               //image: NetworkImage("https://media.istockphoto.com/id/1155415789/photo/coral-living-wave-background-marble-ombre-pattern-prism-effect-abstract-peachy-orange-red.jpg?s=612x612&w=0&k=20&c=7Q0u03O9zbljBzze81juLJxeXAZcC5uuypODxTv3T2M="))),
    image: AssetImage("assets/images/gradientc.jpg"))
         ,),

     child: Center(
       child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
         Image.asset("assets/icons/coffee.png",height: 100,width: 100,),

           Text("Fresh Fruits",style: TextStyle(fontSize: 25,color: Colors.white),),
         Text("Tasty & Healthy",style: TextStyle(fontSize: 15,color: Colors.white),),
         Image.network("https://media.istockphoto.com/id/1182837157/photo/selection-of-antioxidant-group-of-food-frame-copy-space.jpg?s=1024x1024&w=is&k=20&c=MdMUzZRiR-1IWPbkJaqlECLXvRIzjL58yMIfmAniVpM=",height: 200,width: 500,),

         ],
       ),
     ),),
   );
  }
}