import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: WhatsApp()));
}

class WhatsApp extends StatelessWidget{
  var names = ["Priyanka Chopra",
    "Nick Johanas",
    "Prabhas",
    "NayanThara",
    "Katrina Kaif",
    "Trisha",
    "Sharukh Khan",
    "Shilpa"];
  var images = ["assets/images/images.jpg",
    "assets/images/nick.jpg",
    "assets/images/prabhas.jpg",
    "assets/images/nayan.jpg",
    "assets/images/katrina.jpg",
    "assets/images/trisha.jpg",
    "assets/images/sharukh.jpg",
    "assets/images/shilpa.jpg"];
  var messages = ["Hai",
    "Hello....where are you",
    "Hai Honey",
    "Bye take care",
    "Are you ready",
    "Hai",
    "Let me inform",
    "Good night"];
  var times = ["12.50",
    "12.45",
    "12.30",
    "11.45",
    "11.00",
    "10.00",
    "09.55",
    "09.45"];
  var icons=[  Icon(Icons.done),
    Icon(Icons.done_all),
    Icon(Icons.done),
    Icon(Icons.done_all),
    Icon(Icons.done),
    Icon(Icons.done_all_outlined),
    Icon(Icons.done),
    Icon(Icons.done_all)];

  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text("What'sApp"),
    actions:  [
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Icon(Icons.search),
      ),
      SizedBox(width: 10,),
      Padding(
        padding: EdgeInsets.only(right: 30.0),
        child: Icon(Icons.camera_alt),
      ),
      PopupMenuButton(itemBuilder: (context){
return[
  PopupMenuItem(child: Text("Settings")),
  PopupMenuItem(child: Text("New Group")),
  PopupMenuItem(child: Text("Payments")),
  PopupMenuItem(child: Text("New Broadcast")),
];
      }),
    ],
  ),
  body: ListView(
    children: List.generate(08, (index) => Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(images[index]),
        ),
        title: Column(
          children: [
            Text(names[index],style: TextStyle(color: Colors.black),),
            Text(messages[index],style: TextStyle(fontSize: 15),),
          ],

        ),
        trailing: Column(
          children: [
            Text(times[index]),


          ],
        ),
      ),
    ))
  ),
   
  
);
  }
}

