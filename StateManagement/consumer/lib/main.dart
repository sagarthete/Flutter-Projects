import "dart:developer";

import "package:flutter/material.dart";
import "package:provider/provider.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) {
          return Movie(movieName: "Gadar", actor: "Sunny Deol");
        }),
        ChangeNotifierProvider(create: (context) {
          return Ticket(ticketPrice: 200, seatType: "Silver");
        })
      ],
      child: const MaterialApp(
        home: MovieShow(),
      ),
    );
  }
}

class MovieShow extends StatefulWidget {
  const MovieShow({super.key});

  @override
  State createState() => MovieShowState();
}

class MovieShowState extends State<MovieShow> {
  @override
  Widget build(BuildContext context) {
    log("in Build Method");
    return Scaffold(
        appBar: AppBar(
          title: const Text("ConsumerDemo"),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                "Movie Name : ${Provider.of<Movie>(context).movieName}",
                style:
                    const TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 40,
              ),
              Text("Actor Name : ${Provider.of<Movie>(context).actor}",
                  style: const TextStyle(
                      fontSize: 27, fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 40,
              ),
              Consumer(builder: (context, value, child) {
                log("in Consumer");
                return Column(
                  children: [
                    Text("SeatType : ${Provider.of<Ticket>(context).seatType}",
                        style: const TextStyle(
                            fontSize: 27, fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                        "Ticket Price : ${Provider.of<Ticket>(context).ticketPrice}",
                        style: const TextStyle(
                            fontSize: 27, fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                );
              }),
              ElevatedButton(
                onPressed: () {
                  Provider.of<Ticket>(context, listen: false)
                      .changeSeat(300, "Golden");
                },
                child: const Text("Change Seat",
                    style:
                        TextStyle(fontSize: 27, fontWeight: FontWeight.w500)),
              )
            ],
          ),
        ));
  }
}

class Movie {
  String movieName;
  String actor;

  Movie({required this.movieName, required this.actor});
}

class Ticket with ChangeNotifier {
  double ticketPrice;
  String seatType;

  Ticket({required this.ticketPrice, required this.seatType});

  void changeSeat(double ticketPrice, String seatType) {
    this.ticketPrice = ticketPrice;
    this.seatType = seatType;
    notifyListeners();
  }
}
