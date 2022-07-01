import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keels/views/product/products.dart';
import 'package:keels/views/product/view_individual_product.dart';
import 'package:keels/views/product/view_product.dart';
import 'package:page_transition/page_transition.dart';
import '../../../models/product.dart';

class TopProducts extends StatefulWidget {
  final String title;
  final List<Product> products;

  const TopProducts({Key? key, required this.title, required this.products})
      : super(key: key);

  @override
  State<TopProducts> createState() => _TopProductsState();
}

class _TopProductsState extends State<TopProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.10,
          ),
          Container(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.04,
                left: MediaQuery.of(context).size.width * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${widget.title}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins-Light",
                  ),
                ),
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "View All",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF33bf2e),
                          fontFamily: "Poppins-Light",
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 14,
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        PageTransition(
                            type: PageTransitionType.fade,
                            child: Products(
                              title: '${widget.title}',
                            )),
                        (route) => false);
                  },
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.02,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(widget.products.length, (index) {
                  return InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              elevation: 0.8,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  widget.products[index].qty == 0
                                      ? const Text(
                                          "Out of Stock",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                            fontFamily: "Poppins-Light",
                                          ),
                                        )
                                      : Text(''),
                                  Image.network(
                                    "${widget.products[index].image}",
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.width *
                                        0.34,
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "${widget.products[index].name}",
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Poppins-Light",
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text("Rs.${widget.products[index].price}"),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      // log(widget.products[index].toString());

                      Navigator.of(context).pushAndRemoveUntil(
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: ViewIndividualProduct(
                                product: widget.products[index],
                              )),
                          (route) => false);
                    },
                  );
                })
              ],
            ),
          )
        ],
      ),
    );
  }
}
