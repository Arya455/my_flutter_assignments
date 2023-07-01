import 'package:flutter/material.dart';
import 'package:my_flutter_assignments/signup.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Create an Account..Its free",
                  style: TextStyle(fontSize:20,color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: "Email ID",
                    prefixIcon: const Icon(Icons.email_outlined),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: "Password",
                    prefixIcon: const Icon(Icons.visibility_off_outlined),
                    suffixIcon: const Icon(Icons.visibility_off_rounded),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: "Password",
                    prefixIcon: const Icon(Icons.visibility_off_outlined),
                    suffixIcon: const Icon(Icons.visibility_off_rounded),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(height: 50,width:1000,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                      onPressed: (){

                  }, child: Text("SignUp")),
                ),
              ),
              TextButton(style: TextButton.styleFrom(primary: Colors.grey),
                  onPressed: (){},
                  child: Text("Do you have an Account? Login",style: TextStyle(fontSize: 20,color: Colors.grey),))
            ],
          ),
        ),
      ),
    );
  }
}
