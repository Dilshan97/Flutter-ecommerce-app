import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../models/product.dart';

class ViewIndividualProduct extends StatefulWidget {
  final Product product;

  const ViewIndividualProduct({Key? key, required this.product})
      : super(key: key);

  @override
  State<ViewIndividualProduct> createState() => _ViewIndividualProductState();
}

class _ViewIndividualProductState extends State<ViewIndividualProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF33bf2e),
        title: Text(
          "${widget.product.category}",
          style: const TextStyle(
            fontFamily: 'Poppins-Light',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                ),
                child: Image.network(
                  "${widget.product.image}",
                  width: MediaQuery.of(context).size.width * 0.60,
                  height: MediaQuery.of(context).size.height * 0.30,
                ),
              ),
              Text(
                "${widget.product.name}",
                style: const TextStyle(
                  fontFamily: 'Poppins-Bold',
                  fontSize: 18,
                ),
              ),
              Text(
                "Rs.${widget.product.price}",
                style: const TextStyle(
                  fontFamily: 'Poppins-Light',
                  fontSize: 20,
                ),
              ),
              RatingBar.builder(
                initialRating: double.parse(widget.product.rating.toString()),
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 20,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ), onRatingUpdate: (double value) {  },
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 15,
                  right: 15,
                ),
                child: const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                  style: TextStyle(fontFamily: 'Poppins-Light', fontSize: 14),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 15,
                ),
                child: RaisedButton(
                  onPressed: () {
                    log(widget.product.name.toString());
                  },
                  color: Color(0xFF33bf2e),
                  textColor: Colors.white,
                  child: const Text(
                    "Add To Cart",
                    style: TextStyle(fontFamily: 'Poppins-Light'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
