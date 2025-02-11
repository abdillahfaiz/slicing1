import 'package:flutter/material.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final data = [];

  final category = [
    "Makanan",
    "Elektronik",
    "Fashion",
    "Minuman",
    "Hobi",
  ];

  final productController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.logout),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: productController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("product"),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      data.add(productController.text);
                    });
                    productController.clear();
                  },
                  child: Text("Save"),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    // Navigator.pushNamed(context, '/detail-product');
                  },
                  trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          data.remove(data[index]);
                        });
                      },
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                      )),
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
