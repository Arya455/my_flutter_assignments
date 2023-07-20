import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListAssess(),
  ));
}

class ListAssess extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.custom(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
            childrenDelegate: SliverChildBuilderDelegate(
                childCount: 12,
                    (context, index) =>Card(
                child: Center(
                  child: Text("Heart"
                      "Shaker"),
                ),
                    ))
        )
    );
  }
}
