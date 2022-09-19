import 'package:flip_panel/flip_panel.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlipPanel'),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text('FlipClock'),
            onTap: () => Navigator.of(context).pushNamed('flip_clock'),
          ),
        ],
      ),
    );
  }
}

class MyFlipClock extends StatelessWidget {
  const MyFlipClock({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlipClock'),
      ),
      body: Center(
        child: SizedBox(
          height: 64.0,
          child: FlipClock.simple(
            startTime: DateTime.now(),
            digitColor: Colors.white,
            backgroundColor: Colors.black,
            digitSize: 48.0,
            borderRadius: const BorderRadius.all(Radius.circular(3.0)),
          ),
        ),
      ),
    );
  }
}
