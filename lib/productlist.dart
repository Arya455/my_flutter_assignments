import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: ProductList(),
  ));
}

class ProductList extends StatelessWidget {
  var names = [
    "Apple",
    "Mango",
    "Banana",
    "Grapes",
    "pineapple",
    "Kiwi",
    "Orange"
  ];
  var unit = ["Kg", "Doz", "Doz", "Kg", "Pc", "Doz", "Kg"];
  var price = ["30", "80", "90", "60", "56", "80", "54"];
  var images = [
    "assets/images/apple.png",
    "assets/images/mango.png",
    "assets/images/bananas.png",
    "assets/images/grapes.png",
    "assets/images/pineapple.png",
    "assets/images/mango.png",
    "assets/images/orange.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.shopping_cart),
        )],
      ),

      body: ListView(
        children:
          List.generate(7, (index) => (Card(
        color: Colors.grey,
            elevation: 5,
            child: ListTile(
              leading: Image.asset(images[index]),
              title: Column(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Row(
                      children:[
                    Text("Name:",style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic),),
                    Text(names[index],style: TextStyle(fontSize: 10,fontStyle: FontStyle.italic),),],),
                  ),
                  Center(
                    child: Row(
                      children: [
                        Text("Unit:",style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic),),
                        Text(unit[index],style: TextStyle(fontSize: 10,fontStyle: FontStyle.italic),),
                      ],
                    ),
                  ),
                  Row(children: [
                    Text("Price:",style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic),),
                    Text(price[index],style: TextStyle(fontSize: 10,fontStyle: FontStyle.italic),),
                  ],)
                ],
              ),
              trailing: ElevatedButton(
                  onPressed: (){},style: ElevatedButton.styleFrom(primary: Colors.black),
                  child: Text("Add to Cart")),
            ),
          )))

      ),
    );
  }
}
