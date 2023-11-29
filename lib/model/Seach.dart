import 'package:baicuoiki/model/New.dart';
import 'package:flutter/material.dart';
import 'model.dart';

class Search extends StatefulWidget {
  final List<StorageModel> search;
  Search({required this.search});
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String query = "";
  searchItem(String query) {
    List<StorageModel> _searchName = widget.search.where((element) {
      return element.category.toLowerCase().contains(query);
    }).toList();
    return _searchName;
  }

  @override
  Widget build(BuildContext context) {
    List<StorageModel> _searchItem = searchItem(query);
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        actions: [
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 15,
          ),
          Container(
            height: 52,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  query = value;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none),
                fillColor: Color(0xffc2c2c2),
                filled: true,
                hintText: "Search of name",
                hintTextDirection: TextDirection.rtl,
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: _searchItem.map((data) {
              return CardName(
                      image: data.image,
                      author: data.author,
                      category: data.category,
                      content: data.content,
                      // estimate: data.estimate,
                      // favorite: data.favorite,
                      // seen: data.seen,
                      // subtitle: data.subtitle,
                      // time: data.time,
                      title: data.title,
                      // onTap: () {},
                    );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
