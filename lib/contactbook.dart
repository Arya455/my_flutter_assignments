import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactBook()));
}

class ContactBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SimpleContactList"),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: const CircleAvatar(
                  backgroundColor: Colors.orange,
                  radius: 30,
                  child: Icon(
                    Icons.person_2_outlined,
                    color: Colors.white,)),
              title: Text("Arya"),
              subtitle: Text("56465454564"),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.call)),
            ),
          ),
          Card(
            child: ListTile(
              leading: const CircleAvatar(
                  backgroundColor: Colors.pinkAccent,
                  radius: 30,
                  child: Icon(
                    Icons.person_2_outlined,
                    color: Colors.white,)),
              title: Text("lekshmi"),
              subtitle: Text("54665456454"),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.call)),
            ),
          ),
          Card(
            child: ListTile(
              leading: const CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 30,
                  child: Icon(
                    Icons.person_2_outlined,
                    color: Colors.white,)),
              title: Text("lekha"),
              subtitle: Text("213214564687"),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.call)),
            ),
          ),
          Card(
            child: ListTile(
              leading: const CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 30,
                  child: Icon(
                    Icons.person_2_outlined,
                    color: Colors.white,)),
              title: Text("krishna"),
              subtitle: Text("23145674897/"),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.call)),
            ),
          ),
          Card(
            child: ListTile(
              leading: const CircleAvatar(
                  backgroundColor: Colors.orange,
                  radius: 30,
                  child: Icon(
                    Icons.person_2_outlined,
                    color: Colors.white,)),
              title: Text("Anas"),
              subtitle: Text("89794645654564"),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.call)),
            ),
          ),
          Card(
            child: ListTile(
              leading: const CircleAvatar(
                  backgroundColor: Colors.pinkAccent,
                  radius: 30,
                  child: Icon(
                    Icons.person_2_outlined,
                  color: Colors.white,)),
              title: Text("Anjana"),
              subtitle: Text("654687987987"),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.call)),
            ),
          ),
          Card(
            child: ListTile(
              leading: const CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 30,
                  child: Icon(
                    Icons.person_2_outlined,
                    color: Colors.white, )),
              title: Text("Ananya"),
              subtitle: Text("54546579823132"),
              trailing: IconButton(onPressed: () {

              }, icon: Icon(Icons.call)),
            ),
          ),
          Card(
            child: ListTile(
              leading: const CircleAvatar(
                  backgroundColor: Colors.pinkAccent,
                  radius: 30,
                  child: Icon(
                    Icons.person_2_outlined,
                    color: Colors.white,)),
              title: Text("Anjana"),
              subtitle: Text("45678891236"),
              trailing: IconButton(onPressed: () {},
                  icon: const Icon(Icons.call)),
            ),
          ),
        ],
      ),
    );
  }
}
