import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Seperator(),
  ));
}
class Seperator extends StatelessWidget{
  var names=["January","February","March","April","May","June",
    "July","August","September","October","November","December"];
  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(

    ),
      body: ListView.separated(itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all( 5.0),
          child: SizedBox(height: 45,
            child: Card(
              child:Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(names[index],
                  style: TextStyle(color: Colors.black),),
              ) ,
            ),
          ),
        );
      }, separatorBuilder: (context, index){
        if(index%4==0) {
          return  Padding(
            padding:  EdgeInsets.all(05.00),
            child: SizedBox(height: 40,
              child: Card(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text("Advertisement",style: TextStyle(color: Colors.white,),),
                ),


              ),
            ),
          );

      };

        return Text("");
      }, itemCount: 12),
    );
  }
}