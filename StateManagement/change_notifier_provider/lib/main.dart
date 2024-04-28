import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return College(collegeName: "JSPM", staffCount: 15);
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainApp(),
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Demo"),
        backgroundColor: Colors.green,
      ),
      body: const CollegeDataState(),
    );
  }
}

class CollegeDataState extends StatelessWidget {
  const CollegeDataState({super.key});

  @override
  Widget build(BuildContext context) {
    //final college = Provider.of<College>(context, listen: false);
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            Provider.of<College>(context, listen: false).collegeName,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "${Provider.of<College>(context, listen: false).staffCount}",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          GestureDetector(
            onTap: () {
              Provider.of<College>(context, listen: false)
                  .changeData("SITS", 50);
            },
            child: Container(
              color: Colors.amber,
              height: 50,
              width: 100,
            ),
          )
        ],
      ),
    );
  }
}

class College extends ChangeNotifier {
  String collegeName;
  int staffCount;

  College({required this.collegeName, required this.staffCount});

  void changeData(String name, int count) {
    collegeName = name;
    staffCount = count;
    notifyListeners();
  }
}
