import 'package:flutter/material.dart';
import 'package:foodproject/config/colors.dart';

class SingleItem extends StatelessWidget {
  bool isBool = false;
  SingleItem({super.key, required this.isBool});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 100,
                  child: Center(
                    child: Image.network(
                        'https://cdnimg.webstaurantstore.com/uploads/blog/2021/5/fresh-dragon-fruit-sliced-in-half-on-wooden-board-min.jpg'),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: isBool == false
                        ? MainAxisAlignment.spaceAround
                        : MainAxisAlignment.spaceEvenly,
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
                            "50\$ ",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      isBool == false
                          ? Container(
                              margin: const EdgeInsets.only(right: 15),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                            )
                          : const Text("50 Gram"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  padding: isBool == false
                      ? const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 32,
                        )
                      : const EdgeInsets.only(left: 15, right: 15),
                  child: isBool == false
                      ? Container(
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
                        )
                      : Column(
                          children: [
                            const Icon(
                              Icons.delete,
                              size: 30,
                              color: Colors.black54,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 25,
                              width: 70,
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
                            )
                          ],
                        ),
                ),
              ),
            ],
          ),
        ),
        isBool == false
            ? Container()
            : const Divider(
                height: 1,
                color: Colors.black45,
              ),
      ],
    );
  }
}
