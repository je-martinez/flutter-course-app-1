import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int count = 0;

  String get countPlaceholder {
    return "Click${count == 1 ? '' : 's'}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Functions Screen"),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              count = 0;
              setState(() {});
            },
          )
        ],
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButtom(
            icon: Icons.refresh,
            onPress: () {
              if (count == 0) return;
              count = 0;
              setState(() {});
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButtom(
              icon: Icons.plus_one,
              onPress: () {
                count++;
                setState(() {});
              }),
          const SizedBox(
            height: 15,
          ),
          CustomButtom(
            icon: Icons.exposure_minus_1,
            onPress: () {
              if (count == 0) return;
              count--;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPress;

  const CustomButtom({
    super.key,
    required this.icon,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPress,
      child: Icon(icon),
    );
  }
}
