import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count.toString(),
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count = count + 1;
                });
                print('count adalah ${count.toString()}');
              },
              child: Text("Tambah"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count = count - 1;
                });
              },
              child: Text("Kurang"),
            ),
          ],
        ),
      ),
    );
  }
}
