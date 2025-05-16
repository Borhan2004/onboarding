import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Onboardingscreen(),
    );
  }
}

class Onboardingscreen extends StatefulWidget {
  const Onboardingscreen({super.key});

  @override
  State<Onboardingscreen> createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        width: double.infinity,
        height: double.infinity,
 
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/pixel.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Padding(padding:
              EdgeInsets.symmetric(horizontal: 90.0),
             child: Column(
        
              children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                       foregroundColor: Colors.black,
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        
                      },
                      child: Text('Login'),
             ),



              SizedBox(height: 16),


                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: Text('Sign Up'),
                    ),
                     SizedBox(height: 16),
                    Text(
                      'My first Onboarding Screen',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                     SizedBox(height: 42),
              ],
            ),
          ),
       ] ))
      
    );}
}
