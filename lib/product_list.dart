import 'package:flutter/material.dart';

class ProdctListScreen extends StatelessWidget {
  ProdctListScreen({super.key});

  final data = [
    "Sony WH-1000XM3",
    "Microsoft Xbox",
    "Logitech G733 ",
    "Xiaomi Wired in-Ear Earphones",
    "Samsung Galaxy S21 FE 5G",
    "Samsung Galaxy S22 5G",
    "Poco by Xiaomi F1",
    "Samsung Galaxy M14 5G",
    "Apple iPhone 14 (128 GB)",
    "Apple iPhone 12 (256GB)",
    "Xiaomi 12 Pro",
    "Xiaomi 11T Pro 5G",
  ];

  final category = [
    "Makanan",
    "Elektronik",
    "Fashion",
    "Minuman",
    "Hobi",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Products"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: category.length,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 10,
                );
              },
              itemBuilder: (context, index) {
                return Chip(
                  label: Text(category[index]),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(index.toString()),
                  title: Text(data[index]),
                  subtitle: Text("Available Product"),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
