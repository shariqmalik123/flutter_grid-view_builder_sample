// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'items_widget.dart';

class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 246, 242, 242),
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: const Color.fromARGB(255, 246, 242, 242),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      // ignore: sized_box_for_whitespace
      body: ListView(
        children: [
          Container(
            // height: 1000,
            padding: EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 231, 225, 225),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 150,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search here..."),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        size: 27,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: Text(
                    "Recommended Perfumes",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
                Items_Widget()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
