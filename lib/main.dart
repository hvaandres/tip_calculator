import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New Tip',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const UTip(),
    );
  }
}

class UTip extends StatefulWidget {
  const UTip({super.key});

  @override
  State<UTip> createState() => _UTipState();
}

class _UTipState extends State<UTip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('New Tip'),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.inversePrimary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              children: [
                Text("Total Per Person",
                    style: TextStyle(
                      color: Theme.of(context).textTheme.display1.color,
                      fontSize: 30,
                    )),
                Text("\$24.50",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    )),
              ],
            ),
          )
        ]));
  }
}
