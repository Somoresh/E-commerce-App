import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/grid_items.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    List<Color> clrs = [
      Color.fromARGB(255, 241, 81, 32),
      Color.fromARGB(255, 46, 107, 240),
      Color.fromRGBO(247, 89, 50, 1),
    ];

    var imageList = [
      'images/slider1.png',
      'images/slider2.png',
      'images/slider1.png'
    ];

    var iconImageList = [
      'images/smart-watch.png',
      'images/smartphone.png',
      'images/sneakers.png',
      'images/blazer.png',
      'images/usb.png',
      'images/microphone.png',
      'images/smart-watch.png',
      'images/smartphone.png',
      'images/sneakers.png',
      'images/blazer.png',
      'images/usb.png',
      'images/microphone.png',
    ];

    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color(0xffEEF1FF),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 2, color: Colors.black26, spreadRadius: 1)
                    ]),
                child: Icon(
                  CupertinoIcons.cart,
                  size: 28,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 60,
                      width: 100,
                      child: Image.asset(
                        'images/Selony-Logo.png',
                        fit: BoxFit.cover,
                      )),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color(0xffEEF1FF),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 2, color: Colors.black26, spreadRadius: 1)
                    ]),
                child: Icon(
                  CupertinoIcons.search,
                  size: 28,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lets Shop Something!',
                style: TextStyle(fontSize: 18, color: Colors.black45),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 15),
          child: Row(
            children: [
              for (int i = 0; i < 3; i++)
                Container(
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 5.5,
                  decoration: BoxDecoration(
                      color: clrs[i], borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '50% OFF on Summer Collection',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                          Container(
                            width: 90,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                'Shop Now',
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      )),
                      Image.asset(
                        imageList[i],
                        height: 250,
                        width: 200,
                      )
                    ],
                  ),
                )
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Categories',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                'See All',
                style: TextStyle(color: Colors.black54),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                for (var i = 0; i < 7; i++)
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Color(0xffEEF1FF),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                              spreadRadius: 2)
                        ]),
                    child: Padding(
                      padding: EdgeInsets.all(6),
                      child: Image.asset(iconImageList[i]),
                    ),
                  )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        GridItems(),
      ]),
    );
  }
}
