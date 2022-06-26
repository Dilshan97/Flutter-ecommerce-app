import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keels/models/product.dart';

class ViewProduct extends StatefulWidget {

  final Product product;

  const ViewProduct({Key? key, required this.product}) : super(key: key);

  @override
  State<ViewProduct> createState() => _ViewProductState();
}

class _ViewProductState extends State<ViewProduct> {
  @override
  Widget build(BuildContext context) {
    return Card(
        // margin: EdgeInsets.all(10),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.network(
                    "${widget.product.image}",
                    width: MediaQuery.of(context).size.width * 0.30,
                    height: MediaQuery.of(context).size.width * 0.25,
                  ),
                ),
                Center(
                  child: Text(
                    "${widget.product.name}",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                Center(
                  child: Text("Rs.${widget.product.price}"),
                )
              ],
            ),
            Center(
              child:  InkWell(
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                  ),
                  child: Text(
                      "Add to Cart",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white
                      ),
                  ),
                ),
                onTap: () {
                  log("sdds");
                },
              ),
            )
          ],
        )
    );
  }
}
