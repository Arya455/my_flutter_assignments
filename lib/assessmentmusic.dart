import 'package:flutter/material.dart';


void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: PlaylistMusic(),
      ));
}

class PlaylistMusic extends StatefulWidget {
  @override
  State<PlaylistMusic> createState() => _PlaylistState();
}

class _PlaylistState extends State<PlaylistMusic> {
  @override
  int index=0;

  var images=[
    "assets/images/car.jpg",
    "assets/images/lofi.jpg",
    "assets/images/mike.jpg",
    "assets/images/music1.jpg",
    "assets/images/pop.jpg",
    "assets/images/tiktok.jpg",
    "assets/images/car.jpg",
    "assets/images/lofi.jpg",
    "assets/images/mike.jpg",
    "assets/images/music1.jpg",
    "assets/images/pop.jpg",
    "assets/images/tiktok.jpg",

  ];

  Widget build(BuildContext context) {
    return Scaffold(

      appBar:AppBar(

        centerTitle: false,
        title: const Center(
          child: Text(
            "Playlist",
            style: TextStyle(
              fontSize:30,
              color: Colors.pinkAccent,
              fontStyle: FontStyle.italic,
            ), ),
        ),

        bottom: AppBar(
          title: Container(
            decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(18)
            ),            width: double.infinity,
            height: 40,

            child:  const Center(
              child: TextField(
                //  style: TextStyle(color: Colors.pinkAccent),
                decoration: InputDecoration(
                  hintText: '  Search...',
                  hintStyle: TextStyle( fontWeight: FontWeight.bold,
                      fontSize: 15.0, color: Colors.pinkAccent),
                  suffixIcon: Icon(Icons.search,
                    color: Colors.pink,),
                ), ),
            ),),
        ),),



      body:GridView.count(
        crossAxisCount: 2,

        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: List.generate(10, (index) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(100)
              ),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                elevation: 10.0,
                child: Image.asset(images[index],fit: BoxFit.cover,
                ),

              ),

            ),
          );
        }),
      ),

      bottomNavigationBar: BottomNavigationBar(
        onTap: (tapindex){
          setState((){
            index=tapindex;
          });

        },
        currentIndex: index,
        selectedItemColor: Colors.pinkAccent,
        type:BottomNavigationBarType.fixed,

        items: const [

          BottomNavigationBarItem(icon: Icon(Icons.home),label: " "),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label: " "),
          BottomNavigationBarItem(icon: Icon(Icons.home,size: 0),label: "playlist"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz),label: ""),
        ],

      ),);

  }
}