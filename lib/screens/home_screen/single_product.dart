import 'package:flutter/material.dart';
import 'package:foodproject/config/colors.dart';

class SingleProduct extends StatelessWidget {
  // const SingleProduct({super.key});

  final String productImage;
  final String productName;
  final Function onTap;
  const SingleProduct(
      {super.key,
      required this.productImage,
      required this.productName,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(
              right: 10,
            ),
            height: 240,
            width: 165,
            decoration: BoxDecoration(
              color: const Color(0xffd9dad9),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: onTap(),
                  child: Container(
                    height: 150,
                    padding: const EdgeInsets.all(5),
                    width: double.infinity,
                    child: Image.network(
                      productImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productName,
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          '50\$/50 Gram',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: const EdgeInsets.only(left: 5),
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  children: const [
                                    Expanded(
                                      child: Text(
                                        '50 Gram',
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      size: 20,
                                      color: Colors.yellow,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.remove,
                                      size: 15,
                                      color: Color(0xffd0b84c),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        '1',
                                        style: TextStyle(
                                          color: Color(0xffd0b84c),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.add,
                                      size: 15,
                                      color: Color(0xffd0b84c),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
