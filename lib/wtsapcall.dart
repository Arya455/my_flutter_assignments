import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green),
    home: WhatsCall(),
  ));
}

class WhatsCall extends StatelessWidget {
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
  var times = ["12.50",
    "12.45",
    "12.30",
    "11.45",
    "11.00",
    "10.00",
    "09.55",
    "09.45"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calls"),
        ),
        body: ListView(
          children: List.generate(05, (index) =>
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(images[index]),

                  ),
                  title: Text(names[index]),
                  subtitle: Row(
                    children: [
                      Icon(Icons.arrow_back),
                      Text(times[index])
                    ],
                  ),
                ),
              )),
        )
    );
  }
}
