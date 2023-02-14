import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  var pNames = [
    'White T-shirt',
    'Apple Watch Ultra',
    'Nike Sneakers',
    'Airpods',
  ];

  var pSizes = [
    'S',
    'M',
    'XL',
    'XXL',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          children: [
            Align(
              child: Text(
                'My Cart',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                for (int i = 0; i < 4; i++)
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(0xffFFD6EC),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width / 4,
                          margin: EdgeInsets.only(left: 8),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color(0xffFD4ECF7),
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            'images/${pNames[i]}.png',
                            height: 70,
                            width: 70,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.8,
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: 15, top: 20, bottom: 25),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  pNames[i],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'pSizes: ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      pSizes[i],
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '\$50.55',
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Spacer(),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    Text(
                      '\$300',
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 2 * 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.redAccent),
                  child: Center(
                    child: Text(
                      'Order Now',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
