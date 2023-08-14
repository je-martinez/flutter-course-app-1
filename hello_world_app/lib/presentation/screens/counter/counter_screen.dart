import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  String get countPlaceholder {
    return "Click${count == 1 ? '' : 's'}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Screen"),
      ),
      body: SafeArea(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$count",
            style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
          ),
          Text(countPlaceholder,
              style: const TextStyle(
                fontSize: 25,
              ))
        ],
      ))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          setState(() {});
          // setState(() {
          //   count = count + 1;
          // });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
