import 'package:flutter/material.dart';
import 'package:my_flutter_assignments/login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Login!",
                style: TextStyle(
                    fontSize: 45,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Welcome back!Login with your credentials",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Email ID",
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Password",
                    prefixIcon: const Icon(Icons.visibility_off_outlined),
                    suffixIcon: const Icon(Icons.visibility_off_rounded),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),


                  child: SizedBox(height: 50,width: 1000,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Colors.green),
                          onPressed: () {},
                          child: const Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),

                ),
              ),
              TextButton(style: TextButton.styleFrom(primary: Colors.grey),
                  onPressed: (){
                
              }, child: Text("Do you have an Account? SignUp",style: TextStyle(fontSize: 20),))
            ],
          ),
        ),
      ),
    );
  }
}
