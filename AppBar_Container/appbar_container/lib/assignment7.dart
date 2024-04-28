import 'package:flutter/material.dart';

class Assignment7 extends StatefulWidget {
  const Assignment7({super.key});

  @override
  State<Assignment7> createState() => _Assignment7State();
}

class _Assignment7State extends State<Assignment7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Horizontal",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                fontSize: 30,
                color: Colors.black),
            textAlign: TextAlign.center),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),

      body: ListView(
        scrollDirection: Axis.horizontal,

        children: [
          Row(
            children: [
                            const SizedBox(width: 30,),

              Container(
                width: 300,
                height: 300,
                child: Image.network(fit: BoxFit.fill,"https://cutewallpaper.org/27/autumn-wallpaper-desktop-background-hd-day-in-the-park/1939429560.jpg")
              ),
              const SizedBox(width: 30,),
              Container(
                width: 300,
                height: 300,
                child: Image.network(fit: BoxFit.fill,"https://cutewallpaper.org/27/autumn-wallpaper-desktop-background-hd-day-in-the-park/1939429560.jpg")
              ),
                            const SizedBox(width: 30,),

              Container(
                width: 300,
                height: 300,
                child: Image.network(fit: BoxFit.fill,"https://cutewallpaper.org/27/autumn-wallpaper-desktop-background-hd-day-in-the-park/1939429560.jpg")
              ),
                            const SizedBox(width: 30,),

              Container(
                width: 300,
                height: 300,
                child: Image.network(fit: BoxFit.fill,"https://cutewallpaper.org/27/autumn-wallpaper-desktop-background-hd-day-in-the-park/1939429560.jpg")
              ),
                            const SizedBox(width: 30,),


            ],
          ),
        ],
      ),
    );
  }
}
