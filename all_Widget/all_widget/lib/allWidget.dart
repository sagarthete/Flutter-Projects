import 'package:flutter/material.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          const Icon(Icons.notifications),
          const SizedBox(
            width: 10,
          ),
          const Icon(Icons.person)
        ],
        backgroundColor: Colors.black,
        title: Text("PlayStore"),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  width: 400,
                  child: Image.network(
                    "https://terrigen-cdn-dev.marvel.com/content/prod/1x/v660_keyart_01.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(": suggested for you",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 25)),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.amber),
                          child: Image.network(
                            "https://play-lh.googleusercontent.com/cHAGoD8I3Jrgiy9upPt2Qn5Wga4S9ARexMpwTe4XP_JJsWFSPZNueeFCaHhYdajPmzE",
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("Screw Puzzle",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 20)),
                      ]),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.amber),
                              child: Image.network(
                                "https://play-lh.googleusercontent.com/qBdVfwRCsI4KM7qewhJ0AKZKQjyD-DdxPDcdDbsRMhNO9zrwbefggn1vGqRIDZA3fg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text("royal Match",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20)),
                          ]),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.amber),
                          child: Image.network(
                            "https://play-lh.googleusercontent.com/NO1jF0LHhC1VC1BzbrYNwqvOsBNVGFtRbzF0EOsX01Dis4S0CH_LXalpYJqDJOCSPg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("Coin Master",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 20)),
                      ]),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.amber),
                          child: Image.network(
                            "https://en.vnmod.net/wp-content/uploads/2022/08/210820221661052477.jpeg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("Doge Rescue",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 20)),
                      ]),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.amber),
                          child: Image.network(
                            "https://play-lh.googleusercontent.com/bPz1guJ6FHF3oIOEy3KqwpaDDKO-hLRaZoyzmM8bLFLN8fWm6L0_EuUnkwv9iqPo3Ag",
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("8 ball pool",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 20)),
                      ]),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
/************************************************************************************************/
/************************************************************************************************/

                const SizedBox(
                  height: 20,
                ),
                const Text(
                  ": Casual Games",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 25),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.amber),
                              child: Image.network(
                                "https://play-lh.googleusercontent.com/TLUeelx8wcpEzf3hoqeLxPs3ai1tdGtAZTIFkNqy3gbDp1NPpNFTOzSFJDvZ9narFS0",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text("Candy Crush",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 23)),
                          ]),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.amber),
                              child: Image.network(
                                "https://play-lh.googleusercontent.com/N0UxhBVUmx8s7y3F7Kqre2AcpXyPDKAp8nHjiPPoOONc_sfugHCYMjBpbUKCMlK_XUs",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text("Hill Climbing",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 23)),
                          ]),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.amber),
                              child: Image.network(
                                "https://play-lh.googleusercontent.com/NY46ZZgz4nHvJABV3pbLCofb0Z9JCYyB05bRwaUwOfFWXnRvrzZcmmIlPHZw1iXEdw",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text("Bike Racer",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 23)),
                          ]),
                        ],
                      ),
                      /**/ ///////////////// /   one widget  of casual games ***********************/
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Row(children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.amber),
                              child: Image.network(
                                "https://play-lh.googleusercontent.com/Nhdcc77MHYfXR9LoVhhkpnKbhwpZpCLKfl8dUwVhyqgflBQ5ROBtLsn_2fIongMYeoo6",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text("Super Mario",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 23)),
                          ]),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.amber),
                              child: Image.network(
                                "https://gamerspotstorage01.s3.ap-south-1.amazonaws.com/wp-content/uploads/2023/04/07111141/grim_700_16.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text("Grim Legend",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 23)),
                          ]),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.amber),
                              child: Image.network(
                                "https://play-lh.googleusercontent.com/cHAGoD8I3Jrgiy9upPt2Qn5Wga4S9ARexMpwTe4XP_JJsWFSPZNueeFCaHhYdajPmzE",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text("Screw Puzzle",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 23)),
                          ]),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
/************************************************************************* */
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Row(children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.amber),
                              child: Image.network(
                                "https://play-lh.googleusercontent.com/cHAGoD8I3Jrgiy9upPt2Qn5Wga4S9ARexMpwTe4XP_JJsWFSPZNueeFCaHhYdajPmzE",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text("Screw Puzzle",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 23)),
                          ]),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.amber),
                              child: Image.network(
                                "https://play-lh.googleusercontent.com/cHAGoD8I3Jrgiy9upPt2Qn5Wga4S9ARexMpwTe4XP_JJsWFSPZNueeFCaHhYdajPmzE",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text("Screw Puzzle",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 23)),
                          ]),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.amber),
                              child: Image.network(
                                "https://play-lh.googleusercontent.com/cHAGoD8I3Jrgiy9upPt2Qn5Wga4S9ARexMpwTe4XP_JJsWFSPZNueeFCaHhYdajPmzE",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text("Screw Puzzle",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 23)),
                          ]),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
