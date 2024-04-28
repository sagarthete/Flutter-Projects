import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NetFlix(),
    );
  }
}

class NetFlix extends StatefulWidget {
  const NetFlix({super.key});

  @override
  State<NetFlix> createState() => _NetFlixState();
}

class _NetFlixState extends State<NetFlix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Colors.black, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(
            icon: Icon(Icons.my_library_add_rounded),
            label: "MyFiles",
            backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.power_off), label: "Profile"),
      ]),
      appBar: AppBar(
        title: const Text(
          "N",
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 35),
        ),
        backgroundColor: Colors.black,
        actions: [
          TextButton(onPressed: () {}, child: const Text("TVshow")),
          TextButton(onPressed: () {}, child: const Text("Movies")),
          TextButton(onPressed: () {}, child: const Text("Recents")),
          const SizedBox(
            width: 95,
          ),
          const Icon(
            Icons.menu,
            color: Colors.red,
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "MOVIES",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.red),
              ),
              const SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.amber,
                      height: 500,
                      width: 250,
                      child: Image.network(
                        "https://www.firstindia.co.in/public/images/93075B4F-249D-4824-8606-A721C491A3BF_1672579342.jpeg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 500,
                      width: 250,
                      child: Image.network(
                        "https://www.filmibeat.com/fanimg/movie/20279/dhruva-sarja-martin-photos-images-80432.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 500,
                      width: 250,
                      child: Image.network(
                        "https://c8.alamy.com/comp/BGMMYM/avatar-year-2009-director-james-cameron-movie-poster-usa-BGMMYM.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "WEB SERIES",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.red),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.amber,
                      height: 300,
                      width: 200,
                      child: Image.network(
                        "https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 300,
                      width: 200,
                      child: Image.network(
                          "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
                          fit: BoxFit.fill),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 300,
                      width: 200,
                      child: Image.network(
                        fit: BoxFit.fill,
                        "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "MOST POPULAR",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.red),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.amber,
                      height: 300,
                      width: 200,
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc",
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 300,
                      width: 200,
                      child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s",
                          fit: BoxFit.fill),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 300,
                      width: 200,
                      child: Image.network(
                        fit: BoxFit.fill,
                        "https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
