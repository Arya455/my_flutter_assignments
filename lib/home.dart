import 'package:flutter/material.dart';
import 'package:my_flutter_assignments/signup.dart';

import 'login.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hello There!",
            style: TextStyle(
                fontSize: 45, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            "Automatic identity verification which enable you to verify your identity",
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
          Image(
              image: AssetImage(
            "assets/icons/login.webp",
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 30,
              width: 1000,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text(
                  "Login",
                  style: TextStyle( color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 30,
              width: 1000,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpPage()));
                  },
                  child: Text("SignUp")),
            ),
          ),

        ],
      )),
    );
  }
}
