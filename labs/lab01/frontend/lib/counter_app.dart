import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        actions: [
          // FloatingActionButton(
          //   onPressed: _resetCounter,
          //   tooltip: "Reset",
          //   child: const Icon(Icons.refresh),
          // ),
          IconButton(icon: const Icon(Icons.refresh), onPressed: _resetCounter),
        ],
      ),
      // appBar: AppBar(title: const Text("Counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 48),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  tooltip: "Decrement",
                  child: const Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: "Increment",
                  child: const Icon(Icons.add),
                ),
                // IconButton(
                //     icon: const Icon(Icons.remove),
                //     onPressed: _decrementCounter),
                // const SizedBox(width: 32),
                // IconButton(
                //     icon: const Icon(Icons.add), onPressed: _incrementCounter),
              ],
            ),
          ],
        ),
      ),
      // Add a FloatingActionButton to increment the counter

      // body: Center(
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     const SizedBox(height: 20),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         // Text('$_counter', style: const TextStyle(fontSize: 24)),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             const Text('Counter'),
      //             const SizedBox(width: 2.0),
      //             Text('$_counter')
      //           ],
      //         ),
      //         IconButton(
      //             icon: const Icon(Icons.remove),
      //             onPressed: _decrementCounter),
      //         IconButton(
      //             icon: const Icon(Icons.add), onPressed: _incrementCounter),
      //         IconButton(
      //             icon: const Icon(Icons.refresh), onPressed: _resetCounter),
      //       ],
      //     )
      //   ],
      // ),
    );
  }
}
