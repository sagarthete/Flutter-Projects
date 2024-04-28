import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});

  @override
  State<ListViewDemo> createState() => _ListViewDemoStae();
}

class _ListViewDemoStae extends State<ListViewDemo> {
  List<List> imageList = [
    [
      "https://www.livemint.com/lm-img/img/2023/09/25/1600x900/TOPSHOT-CRICKET-IND-AUS-ODI-1_1695636304092_1695636326883.jpg",
      "https://www.sportsadda.com/static-assets/waf-images/9b/2e/48/16-9/nyy4uXTRVK.jpg?v=1.6&w=420%20420w",
      "https://www.sportsadda.com/static-assets/waf-images/6b/cd/ea/16-9/gAyc6U8Vb6.jpg?v=1.6&w=420%20420w"
    ],
    [
      "https://www.sportsadda.com/static-assets/waf-images/99/a3/5f/1-1/SsqgykGViP.jpg?v=1.6&w=1024",
      "https://assets.gqindia.com/photos/65264ff9fee7ce43edda07d9/master/w_1600%2Cc_limit/Muhammad-Siraj.jpg",
      "https://e0.365dm.com/23/11/1600x900/skysports-virat-kohli-india_6361312.jpg?20231116055010"
    ],
    [
      "https://c.ndtvimg.com/2023-06/iacn2g_virat-kohli-test-twitter_650x300_05_June_23.jpg",
      "https://www.bjsports.live/wp-content/uploads/2023/07/187-Shikhar-Dhawan-vs-Australia-in-2013-at-Mohali.jpg",
      "https://english.cdn.zeenews.com/sites/default/files/2016/12/19/556137-19-12-2016-test-gh11-o.jpg",
    ]
  ];
  int ind = 0;
  List separaterlist = ["Oneday", "T20", "Test"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListViewDemo"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: ListView.separated(
        itemCount: separaterlist.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            color: Colors.black,
            height: 30,
            thickness: 10,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Text("${separaterlist[index]}",
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w600)),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: imageList[index].length,
                  itemBuilder: (BuildContext context, int indexIn) {
                    return Container(
                      height: 200,
                      width: 50,
                      margin: const EdgeInsets.all(20),
                      child: Image.network(
                        "${imageList[index][indexIn]}",
                        fit: BoxFit.fill,
                      ),
                    );
                  }),
            ],
          );
        },
      ),
    );
  }
}
