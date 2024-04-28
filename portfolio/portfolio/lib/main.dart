import 'package:flutter/material.dart';

void main() => runApp(const PortFolio());

class PortFolio extends StatelessWidget {
  const PortFolio({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Port(),
    );
  }
}

class Port extends StatefulWidget {
  const Port({super.key});

  @override
  State<Port> createState() => PortState();
}

class PortState extends State<Port> {
  int counter = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("portFolio"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 40,
              height: 30,
            ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                (counter >= 0)
                    ? const Text(
                        "Name: Sagar Pandharinath Thete",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    : const Text(""),
                const SizedBox(
                  height: 20,
                ),
                (counter >= 1)
                    ? Container(
                        height: 100,
                        width: 100,
                        child: Image.network(
                            "https://media.licdn.com/dms/image/D4D03AQGsWbZZdA1hVA/profile-displayphoto-shrink_100_100/0/1669429087193?e=2147483647&v=beta&t=q4q8yi7AMdLpHxhO-0PguKYy65iDfgKhNfrFEM26t2c"),
                      )
                    : Container(),
                SizedBox(
                  height: 20,
                ),
                (counter >= 2)
                    ? const Text(
                        "College Name : SITS",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    : const Text(""),
                SizedBox(
                  height: 20,
                ),
                (counter >= 3)
                    ? Container(
                        height: 100,
                        width: 100,
                        child: Image.network(
                            "https://images.shiksha.com/mediadata/images/1571990208phpCoii2i.jpg"),
                      )
                    : Container(),
                SizedBox(
                  height: 20,
                ),
                (counter >= 4)
                    ? const Text(
                        "Dream Company : Adobe",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    : const Text(""),
                const SizedBox(
                  height: 20,
                ),
                (counter >= 5)
                    ? Container(
                        height: 100,
                        width: 100,
                        child: Image.network(
                            "https://pbs.twimg.com/profile_images/1357117764796706817/bGmivaJU_200x200.png"),
                      )
                    : Container(),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Text("next"),
      ),
    );
  }
}
