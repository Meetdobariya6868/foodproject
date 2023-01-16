import 'package:flutter/material.dart';
import 'package:foodproject/config/colors.dart';
import 'package:foodproject/widgets/single_item.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text("Search"),
        backgroundColor: primaryColor,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.menu_rounded),
          ),
        ],
      ),
      body: ListView(
        children: [
          const ListTile(
            title: Text("Items"),
          ),
          Container(
            height: 52,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: const Color(0xffc2c2c2),
                filled: true,
                hintText: "Search for items in the store",
                suffixIcon: const Icon(Icons.search),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleItem(
            isBool: false,
          ),
          SingleItem(
            isBool: false,
          ),
          SingleItem(
            isBool: false,
          ),
          SingleItem(
            isBool: false,
          ),
        ],
      ),
    );
  }
}
