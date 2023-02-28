import 'package:flutter/material.dart';
import 'package:futsal_flutter/Model/Signup.dart';
import 'Dashboard.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: 32.0),
              Container(
                width: 300.0,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                width: 300.0,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 32.0),
              Container(
                width: 150.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FutsalBookingDashboard()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  ),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                child: Text(
                  'Create an account',
                  style: TextStyle(fontSize: 16.0, color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
