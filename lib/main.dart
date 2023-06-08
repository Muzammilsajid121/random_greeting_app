import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RandomGreetingScreen(),
    );
  }
}

class RandomGreetingScreen extends StatefulWidget {
  @override
  _RandomGreetingScreenState createState() => _RandomGreetingScreenState();
}

class _RandomGreetingScreenState extends State<RandomGreetingScreen> {
  List<String> greetings = [
    'Hello',
    'Hola',
    'Bonjour',
    'Ciao',
    'Namaste',
    'Salam',
    'Konnichiwa',
  ];
  String randomGreeting = '';

  void generateRandomGreeting() {
    final random = Random();
    randomGreeting = greetings[random.nextInt(greetings.length)];
    setState(() {});
  }

/*  Explanation to generaterandomGreeting function
We define the function generateRandomGreeting which takes no arguments and has a return type of void. This means it doesn't return any value.

We create an instance of the Random class and assign it to the variable random. This Random instance will be used to generate random numbers.

We select a random greeting from the greetings list. greetings.length returns the number of elements in the greetings list, and random.nextInt(greetings.length) generates a random integer between 0 (inclusive) and the length of greetings (exclusive). This random integer is used as the index to access a random greeting from the list.

The randomly selected greeting is assigned to the randomGreeting variable, which is a String variable defined in the _RandomGreetingScreenState class. This will store the randomly selected greeting.
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEDBD0),
      appBar: AppBar(
        title: Text('Random Greetings'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              randomGreeting,
              style: TextStyle(
                  fontSize: 50, fontWeight: FontWeight.w700, color: Colors.red),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: generateRandomGreeting,
              child: Text('Generate Greeting'),
            ),
          ],
        ),
      ),
    );
  }
}
