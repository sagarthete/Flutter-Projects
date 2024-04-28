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
      home: Assignment4(),
    );
  }
}

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State<Assignment4> createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  bool like1 = false;
  bool like2 = false;
  bool like3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          const Icon(
            Icons.favorite_outline_outlined,
            color: Colors.black,
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image.network(
                      "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcR1h65X6WJgJLQX__Ji0g_l7lykHKgX2h9afpJHIvey6H-7-4S_ZYWAdW9LcbZ47tVFbEBpo46kWm0huBs",
                      width: double.infinity,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            like1 = !like1;
                          });
                        },
                        icon: like1
                            ? const Icon(
                                Icons.favorite_rounded,
                                color: Colors.red,
                              )
                            : const Icon(
                                Icons.favorite_outline_outlined,
                              ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.comment_outlined,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.bookmark_border_outlined,
                          ))
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image.network(
                      "https://static.independent.co.uk/2023/11/14/15/12-5cb6b5afc7ac4c868ebce09feb88f6d4.jpg",
                      width: double.infinity,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            like2 = !like2;
                          });
                        },
                        icon: like2
                            ? const Icon(
                                Icons.favorite_rounded,
                                color: Colors.red,
                              )
                            : const Icon(
                                Icons.favorite_outline_outlined,
                              ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.comment_outlined,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.bookmark_border_outlined,
                          )),
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image.network(
                      "https://static.cricbuzz.com/a/img/v1/1080x608/i1/c359219/rahul-became-the-first-indian-batter-to-score-a-100-batting-at-no5-or-below-with-a-strike-rate-in-excess-of-150.jpg",
                      width: double.infinity,
                    ),
                  ),
                  Row(children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            like3 = !like3;
                          });
                        },
                        icon: like3
                            ? const Icon(
                                Icons.favorite_rounded,
                                color: Colors.red,
                              )
                            : const Icon(
                                Icons.favorite_outline_outlined,
                              )),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.bookmark_border_outlined,
                        )),
                  ]),
                ],
              ),
            ],
          ),
        ],
      ),
    );

    /*    body: SingleChildScrollView(
        child: ,
                )
              ],
            ),
          ]Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Image.network(
                    "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcR1h65X6WJgJLQX__Ji0g_l7lykHKgX2h9afpJHIvey6H-7-4S_ZYWAdW9LcbZ47tVFbEBpo46kWm0huBs",
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_outline_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Image.network(
                    "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcR1h65X6WJgJLQX__Ji0g_l7lykHKgX2h9afpJHIvey6H-7-4S_ZYWAdW9LcbZ47tVFbEBpo46kWm0huBs",
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_outline_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Image.network(
                    "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcR1h65X6WJgJLQX__Ji0g_l7lykHKgX2h9afpJHIvey6H-7-4S_ZYWAdW9LcbZ47tVFbEBpo46kWm0huBs",
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_outline_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    )
                  ],
        ),
      ),
    */
  }
}
