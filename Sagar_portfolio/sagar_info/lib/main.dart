import "package:flutter/material.dart";
import 'package:flutter_web_browser/flutter_web_browser.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPortfolio(),
    );
  }
}

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({super.key});

  @override
  State createState() => MyPortfolioState();
}

class MyPortfolioState extends State<MyPortfolio> {
  Future<void> _launchURL(String url) async {
    await FlutterWebBrowser.openWebPage(url: url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 236, 236),
      body: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: Image.network(
                    "https://media.licdn.com/dms/image/D4D03AQGsWbZZdA1hVA/profile-displayphoto-shrink_200_200/0/1669429087193?e=2147483647&v=beta&t=0VL0T9K3NVchBvyYN5Z6sD0Rr4iuFjgNCJMrqRoMMvA",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 60),
                  child: SizedBox(
                    height: 20,
                    width: 150,
                    child: Text(
                      "Sagar Thete",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 60),
                  child: SizedBox(
                    height: 20,
                    width: 150,
                    child: Text("Flutter Developer",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600)),
                  ),
                ),
                // GestureDetector(
                //     onTap: () async {
                //       await _launchURL(
                //           'https://www.linkedin.com/in/sagar-thete-3b9ba3244/?originalSubdomain=in');
                //     },
                //     child: Container(
                //         padding: EdgeInsets.all(20),
                //         decoration: BoxDecoration(
                //           color: Colors.blue,
                //           borderRadius: BorderRadius.circular(10),
                //         ),
                //         child: Icon(Icons.web)))
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 1,
                  width: 250,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 60, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      const SizedBox(
                        child: Text(
                          "Languages",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const SizedBox(
                        child: Text("-> English"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const SizedBox(
                        child: Text("-> Hindi"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const SizedBox(
                        child: Text("-> Marathi"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 1,
                        width: 200,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 60, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      const SizedBox(
                        child: Text(
                          "Skills",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const SizedBox(
                        child: Text("-> Flutter"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const SizedBox(
                        child: Text("-> Java"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const SizedBox(
                        child: Text("-> C,CPP"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const SizedBox(
                        child: Text("-> Version Control"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 1,
                        width: 200,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 60, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      const SizedBox(
                        child: Text(
                          "Key Experties",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const SizedBox(
                        child: Text("-> Flutter framework"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const SizedBox(
                        child: Text("-> JVM Architecture"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const SizedBox(
                        child: Text("-> AI Tools"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const SizedBox(
                        child: Text("-> Linux"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 1,
                        width: 200,
                        color: Colors.black,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          Column(
            children: [
              Container(
                color: Colors.white,
                child: Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 30.0),
                          child: SizedBox(
                            child: Text(
                              "I'm Sagar Thete",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: SizedBox(
                            child: Text(
                              "Flutter Developer",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 255, 196, 59)),
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Text("""
                            Proficient in  Dart  programming language
                            and skilled  in UI/UX design,RESTful APIs 
                            integration, and  third-party  libraries.
                            Strong  problem - solving abilities and a
                            collaborative team  player with a passion
                            for learning&implementing new technologies."""),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 200,
                          width: 100,
                          child: Image.network(
                              "https://c8.alamy.com/comp/2D5MF6K/illustration-of-a-teenage-guy-showing-his-resume-2D5MF6K.jpg",
                              fit: BoxFit.cover),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                height: 200,
                width: 400,
                color: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}
