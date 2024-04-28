import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:provider/provider.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
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
            title: const Text("Provider Demo"), backgroundColor: Colors.green),
        body: const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 40,
                width: 400,
              ),
              CollegeDataState(),
            ],
          ),
        ));
  }
}

class CollegeDataState extends StatelessWidget {
  const CollegeDataState({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(Provider.of<College>(context, listen: false).collegeName!),
          const SizedBox(
            height: 20,
          ),
          Text("${Provider.of<College>(context, listen: false).staffCount}"),
        ],
      ),
    );
  }
}

// Column viewFun(BuildContext context) {
//   return Column(
//     children: [
//       Text(Provider.of<College>(context, listen: false).collegeName),
//       const SizedBox(
//         height: 20,
//       ),
//       Text("${Provider.of<College>(context, listen: false).staffCount}"),
//     ],
//   );
// }

class College {
  String collegeName = "JSPM";
  int staffCount = 30;

  College({required this.collegeName, required this.staffCount});
}
