import 'package:flutter/material.dart';
import 'package:flutter_app/home_screen.dart';
import 'package:flutter_app/signup_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.purple.shade700,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/D4.png',
                width: 400,
                height: 400,
              ),
              SizedBox(height: 40),
              Text(
                'Early protection for you and your family,\nto grow up healthy',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                child: Text('Get Started'),
                style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.purple.shade700, // Change button color to blue
                      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
