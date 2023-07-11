import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: WhatsApp()));
}

class WhatsApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text("What'sApp"),
    actions: const [
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Icon(Icons.search),
      ),
      SizedBox(width: 10,),
      Padding(
        padding: EdgeInsets.only(right: 30.0),
        child: Icon(Icons.camera_alt),
      ),
    ],
  ),
  body: ListView(
    children:   [
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  "assets/images/images.jpg")
            ),
    title: Text("Priyanka Chopra"),
    subtitle: Text("hai, hello"),
    trailing:Column(

      children: [

        Text("10:15"),
        Icon(Icons.done_all)
      ],
    )

            
            ),
          ),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Card(
          child: ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/nick.jpg"
                   )
            ),
            title: Text("Nick Jonas"),
            subtitle: Text("hai, kya he"),
            trailing:SizedBox(
              child: Column(
                children: [Text("10.00"),
                  Icon(Icons.done_all)
                ],
              ),
            )
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Card(
          child: ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/images/prabhas.jpg")
            ),
            title: Text("Prabhas"),
            subtitle: Text("hai, whatsapp"),
            trailing: Text("10.00"),

          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Card(
          child: ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/images/nayan.jpg")
            ),
            title: Text("NayanThara"),
            subtitle: Text("hai, whatsapp"),
            trailing: Text("09:59"),

          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Card(
          child: ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/images/katrina.jpg")
            ),
            title: Text("Katrina Kaif"),
            subtitle: Text("hai, whatsapp"),
            trailing: Text("09:55"),

          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Card(
          child: ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/images/trisha.jpg")
            ),
            title: Text("Trisha"),
            subtitle: Text("Are you ok????"),
            trailing: Text("09:50"),

          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Card(
          child: ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/images/sharukh.jpg")
            ),
            title: Text("Sharukh Khan"),
            subtitle: Text("hai, how are you"),
            trailing: Text("09:45"),




          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Card(
          child: ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/images/shilpa.jpg")
            ),
            title: Text("Shilpa"),
            subtitle: Text("hai, where are you"),
            trailing: Column(
              children: [
                Text("yesterday")
              ],
            )

          ),
        ),
      ),


    ],
  ),
  
);
  }
}

