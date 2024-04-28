import 'package:flutter/material.dart';

class PaddingMargin extends StatefulWidget {
  const PaddingMargin({super.key});

  @override
  State<PaddingMargin> createState() => _PaddingMarginState();
}


class _PaddingMarginState extends State<PaddingMargin> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Padding and Margin",
          style: TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: Container(
            width: 250,
            height: 250,
            color: Colors.amber,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(30),
            margin: const EdgeInsets.all(30),
            child: Image.network(
              "https://media.baamboozle.com/uploads/images/189269/1609269444_18732",
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
 
      ),
    );
  }
}
