import 'package:baicuoiki/model/Screen.dart';
import 'package:baicuoiki/model/provider_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class CardName extends StatelessWidget {
  String title;
  String content;
  String category;
  String author;
  String image;

  CardName({
    required this.title,
    required this.content,
    required this.category,
    required this.author,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    double width, height;
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Card(
      child: Container(
        height: 150,
        width: 363,
        decoration: BoxDecoration(
          gradient: new LinearGradient(
              colors: [const Color(0xFF3366FF), const Color(0xFF00CCFF)],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.5, 0.0),
              stops: [0.0, 0.5],
              tileMode: TileMode.mirror),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // margin: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
                      child: Image.network(
                          image,
                          width: 140,
                          height: 150,
                          // fit: BoxFit.cover
                      ),
                  ),
                ),

                SizedBox(
                  width: 8,
                  height: 12,
                ),
                Container(
                    height: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Screen(),
                              ),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
                                child: Text(
                                  title,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      height: 2,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                author,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                category,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
