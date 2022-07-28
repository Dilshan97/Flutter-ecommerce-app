import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keels/models/product.dart';
import 'package:keels/views/product/view_individual_product.dart';
import 'package:keels/views/product/view_product.dart';
import 'package:page_transition/page_transition.dart';

class ViewProduct extends StatefulWidget {
  final Product product;

  const ViewProduct({Key? key, required this.product}) : super(key: key);

  @override
  State<ViewProduct> createState() => _ViewProductState();
}

class _ViewProductState extends State<ViewProduct> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => ViewIndividualProduct(
              product: widget.product,
            ),
          ),
        );
      },
      child: Card(
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
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins-Light",
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Rs.${widget.product.price}",
                      style: const TextStyle(
                        fontFamily: "Poppins-Light",
                      ),
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
