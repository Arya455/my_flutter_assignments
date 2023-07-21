import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridAssess(),
  ));
}

class GridAssess extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
        body:GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,mainAxisSpacing: 10,
          children: const [
            SizedBox(height: 50,
              width: 100,
              child: Card(

                color: Colors.blue,
                child: Text("HeartShaker"),
              ),
            ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              width: 100,
              child: Card( color: Colors.pinkAccent,
                child: Text("HeartShaker"),),
            ),
          ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                width: 100,
                child: Card( color: Colors.red,
                  child: Text("HeartShaker"),),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                width: 100,
                child: Card( color: Colors.pinkAccent,
                  child: Text("HeartShaker"),),
              ),
            )


          ],)


    );
  }
}
