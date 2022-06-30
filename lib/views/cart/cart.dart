import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {

  final itemsList = List<String>.generate(10, (n) => "List item ${n}");

  ListView generateItemsList() {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return Dismissible(
            key: Key(itemsList[index]),
            child: InkWell(
              onTap: () {
                print("${itemsList[index]} clicked");
              },
              child: Card(
                child: ListTile(
                  title: Text('${itemsList[index]}'),
                ),
              ),
            ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "cart",
          style: TextStyle(fontFamily: "Poppins-Light"),
        ),
        backgroundColor: Colors.green,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: generateItemsList(),
      ),
    );
  }
}
