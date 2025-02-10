import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              count.toString(),
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });
                print(count);
              },
              child: Text("Tambah"),
            )
          ],
        ),
      ),
    );
  }
}
