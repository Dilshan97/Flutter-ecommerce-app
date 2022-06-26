import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopProducts extends StatefulWidget {
  const TopProducts({Key? key}) : super(key: key);

  @override
  State<TopProducts> createState() => _TopProductsState();
}

class _TopProductsState extends State<TopProducts> {
  List products = [
    {
      "id": 1,
      "name": "Organic Pumpkin",
      "category": "Vegetables",
      "price": "500.00",
      "qty": 0,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic911081.jpg"
    },
    {
      "id": 2,
      "name": "Organic Carrot",
      "category": "Vegetables",
      "price": "790.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic911020.jpg"
    },
    {
      "id": 3,
      "name": "Organic Gotukola",
      "category": "Vegetables",
      "price": "85.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic911040.jpg"
    },
    {
      "id": 4,
      "name": "Organic Beetroot",
      "category": "Vegetables",
      "price": "980.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic911006.jpg"
    },
    {
      "id": 5,
      "name": "Organic Tomato",
      "category": "Vegetables",
      "price": "1,380.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic911104.jpg"
    },
    {
      "id": 6,
      "name": "Organic Papaya",
      "category": "Fruits",
      "price": "500.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic921029.jpg"
    },
    {
      "id": 7,
      "name": "Organic Pineapple",
      "category": "Fruits",
      "price": "458.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic921032.jpg"
    },
    {
      "id": 8,
      "name": "Organic Dragon Fruit",
      "category": "Fruits",
      "price": "1,500.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic921013.jpg"
    },
    {
      "id": 9,
      "name": "Banana - Ambul",
      "category": "Fruits",
      "price": "130.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic923003.jpg"
    },
    {
      "id": 10,
      "name": "Melon - Dark Bell",
      "category": "Fruits",
      "price": "220.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic923059.jpg"
    },
    {
      "id": 11,
      "name": "Apple - Red",
      "category": "Fruits",
      "price": "2,040.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic924007.jpg"
    },
    {
      "id": 12,
      "name": "Grapes - Green",
      "category": "Fruits",
      "price": "2,490.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic924018.jpg"
    },
    {
      "id": 13,
      "name": "Elephant House Ginger Beer 1.5L",
      "category": "Beverages",
      "price": "300.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic99367.jpg"
    },
    {
      "id": 14,
      "name": "Ambewela Flavoured Milk Vanilla 1000ml",
      "category": "Beverages",
      "price": "450.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic117560.jpg"
    },
    {
      "id": 15,
      "name": "Kist Juice Green Apple 1L",
      "category": "Beverages",
      "price": "750.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic119284.jpg"
    },
    {
      "id": 16,
      "name": "Kotmale Full Cream Chocolate 1L",
      "category": "Beverages",
      "price": "440.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic111461.jpg"
    },
    {
      "id": 17,
      "name": "Juicee Crush Abc Blackcurrant Juice 2L",
      "category": "Beverages",
      "price": "1,320.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic118593.jpg"
    },
    {
      "id": 18,
      "name": "Mountain Dew 1.5L",
      "category": "Beverages",
      "price": "300.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic117886.jpg"
    },
    {
      "id": 19,
      "name": "Coca Cola 1050ml",
      "category": "Beverages",
      "price": "200.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic121118.jpg"
    },
    {
      "id": 20,
      "name": "Araliya Keeri Samba Rice 1Kg (5 Units)",
      "category": "Grocery",
      "price": "260.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic120463.jpg"
    },
    {
      "id": 21,
      "name": "Keells Chick Peas 500g",
      "category": "Grocery",
      "price": "370.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic8703.jpg"
    },
    {
      "id": 22,
      "name": "Keells Red Dhal 500g",
      "category": "Grocery",
      "price": "310.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic8701.jpg"
    },
    {
      "id": 23,
      "name": "Keells White Sugar 1kg",
      "category": "Grocery",
      "price": "325.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic8704.jpg"
    },
    {
      "id": 24,
      "name": "Maggi Coconut Milk Powder 300g",
      "category": "Grocery",
      "price": "495.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic27617.jpg"
    },
    {
      "id": 25,
      "name": "Lanka Soy Soya Meat Chicken 90g",
      "category": "Grocery",
      "price": "140.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic62765.jpg"
    },
    {
      "id": 26,
      "name": "Maliban Gold Marie 350g",
      "category": "Grocery",
      "price": "340.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic6636.jpg"
    },
    {
      "id": 27,
      "name": "Pedigree Chicken And Liver Pouch 70g",
      "category": "Household",
      "price": "275.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic114021.jpg"
    },
    {
      "id": 28,
      "name": "Vim Dishwash Bar Lime 100g",
      "category": "Household",
      "price": "70.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic11541.jpg"
    },
    {
      "id": 29,
      "name": "Dettol Soap Cool 70g",
      "category": "Household",
      "price": "120.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic6785.jpg"
    },
    {
      "id": 30,
      "name": "Sunlight Soap Yellow 115g",
      "category": "Household",
      "price": "170.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic13079.jpg"
    },
    {
      "id": 31,
      "name": "Signal Strong Teeth Toothpaste 120g",
      "category": "Household",
      "price": "250.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic13365.jpg"
    },
    {
      "id": 32,
      "name": "Flora Paper Serviettes 1Ply 25S",
      "category": "Household",
      "price": "60.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic9681.jpg"
    },
    {
      "id": 33,
      "name": "Lifebuoy Soap Total 100g",
      "category": "Household",
      "price": "185.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic13080.jpg"
    },
    {
      "id": 34,
      "name": "Bairaha Whole Chicken",
      "category": "Meat",
      "price": "1,150.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic937001.jpg"
    },
    {
      "id": 35,
      "name": "New Anthonys Whole Chicken Skin On",
      "category": "Meat",
      "price": "1,160.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic937021.jpg"
    },
    {
      "id": 36,
      "name": "Eh Pork Chops",
      "category": "Meat",
      "price": "1,960.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic934020.jpg"
    },
    {
      "id": 37,
      "name": "Cic Skin Less Whole Chicken",
      "category": "Meat",
      "price": "1,250.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic937004.jpg"
    },
    {
      "id": 38,
      "name": "Bairaha Pre Cut Whole Chicken S/On",
      "category": "Meat",
      "price": "1,255.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic937022.jpg"
    },
    {
      "id": 39,
      "name": "Cic Whole Chicken With Giblet",
      "category": "Meat",
      "price": "1,150.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic937005.jpg"
    },
    {
      "id": 40,
      "name": "Casa Di Sapori Chicken Salami - 80g",
      "category": "Meat",
      "price": "820.00",
      "qty": 100,
      "image":
          "https://essstr.blob.core.windows.net/essimg/350x/Small/Pic939170.jpg"
    }
  ];

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
                const Text(
                  "Nexus Member Deals",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins-Light",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "View All",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.green,
                        fontFamily: "Poppins-Light",
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 14,
                    )
                  ],
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
                ...List.generate(products.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            elevation: 0.8,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                products[index]['qty'] == 0
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
                                  products[index]['image'],
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.width * 0.34,
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  products[index]['name'],
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
                                Text("Rs.${products[index]['price']}"),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
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
