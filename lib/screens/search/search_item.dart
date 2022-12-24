import 'package:flutter/material.dart';
import 'package:foodproject/config/colors.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 100,
              child: Center(
                child: Image.network(
                    'https://cdnimg.webstaurantstore.com/uploads/blog/2021/5/fresh-dragon-fruit-sliced-in-half-on-wooden-board-min.jpg'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "productName",
                        style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "50\$/50 Gram",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 15),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 35,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Text(
                            "50 Gram",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Center(
                          child: Icon(
                            Icons.arrow_drop_down,
                            size: 20,
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 32,
              ),
              child: Container(
                height: 25,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        size: 20,
                        color: primaryColor,
                      ),
                      Text(
                        "Add",
                        style: TextStyle(color: primaryColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
