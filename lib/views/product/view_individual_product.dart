import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:keels/providers/product_provider.dart';
import '../../models/product.dart';
import '../category/category_product.dart';

class ViewIndividualProduct extends StatefulWidget {
  final Product product;

  const ViewIndividualProduct({Key? key, required this.product})
      : super(key: key);

  @override
  State<ViewIndividualProduct> createState() => _ViewIndividualProductState();
}

class _ViewIndividualProductState extends State<ViewIndividualProduct> {

  List<Product> similar_products = [];

  @override
  void initState() {
    getSimilarProducts();
  }

  getSimilarProducts() async {
    similar_products = await ProductProvider(context).getProductsByCategory(widget.product.category_id.toString());
    setState(() {});
  }

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
        child: Column(
          children: [
            Container(
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
                      fontSize: 17,
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Similar Products",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins-Light"
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:  [
                          InkWell(
                            child: const Text(
                              "View All",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF33bf2e),
                                  fontFamily: "Poppins-Light"
                              ),
                            ),
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (builder) => CategoryProduct(
                              //       category: widget.product.category,
                              //     ),
                              //   ),
                              // );
                            },
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                left: 5
                            ),
                            child: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 14,
                                color: Colors.black45
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(similar_products.length, (index) {
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
                                          similar_products[index].qty == 0
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
                                            "${similar_products[index].image}",
                                            width: MediaQuery.of(context).size.width,
                                            height: MediaQuery.of(context).size.width *
                                                0.34,
                                          ),
                                          const SizedBox(
                                            height: 12,
                                          ),
                                          Text(
                                            "${similar_products[index].name}",
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
                                          Text("Rs.${similar_products[index].price}"),
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (builder) => ViewIndividualProduct(
                                    product: similar_products[index],
                                  ),
                                ),
                              );
                            },
                          );
                        })
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


}
