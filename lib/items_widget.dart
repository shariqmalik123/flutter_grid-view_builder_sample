// ignore_for_file: prefer_const_constructors, unused_label, camel_case_types, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Items_Widget extends StatelessWidget {
  List img = [
    'Creed Aventus',
    'Black Opium',
    'Janan By J.',
    'Bleu De Chanel',
    'Gucci By GUCCI',
    'Hugo Boss',
    'Black Scent',
    'Blue Soul',
  ];
  Items_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        padding: EdgeInsets.all(15),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        childAspectRatio: (0.52),
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: [
          for (int i = 0; i < img.length; i++)
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 10,
              ),
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
              // height: 332,
              // width: 180,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      color:
                          Color.fromARGB(255, 200, 208, 208).withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 5,
                    ),
                  ]),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.all(2),
                      child: Image.asset(
                        "images/${img[i]}.png",
                        alignment: Alignment.topCenter,
                        width: 180,
                        height: 180,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Text(
                            img[i],
                            style: TextStyle(
                                fontSize: 17.3,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                right: 0,
                                left: 0,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "For Men",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black26),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$262.27",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 115, 0),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(CupertinoIcons.add, size: 20,),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ]);
  }
}
