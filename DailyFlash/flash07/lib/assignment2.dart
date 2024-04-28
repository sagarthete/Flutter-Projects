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
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          centerTitle: true,
          title:  const Text(
            "Assignment2",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        body:  Center(

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                height: 80,
                width: 250,
                
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2
                  ),
                  borderRadius:const  BorderRadius.all(
                    Radius.circular(20),                  )
                ),

                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Icon(
                      Icons.star,
                      size: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),

                    Text(
                      "Rating 4.5",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
       
            ],
          ),
        ),
      ),
    );
  }
}
