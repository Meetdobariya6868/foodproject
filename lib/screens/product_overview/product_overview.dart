import 'package:flutter/material.dart';
import 'package:foodproject/config/colors.dart';

enum SigninCharacter { fill, outline }

class ProductOverview extends StatefulWidget {
  const ProductOverview({super.key});

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  SigninCharacter _character = SigninCharacter.fill;

  Widget bottomNavigatorBar({
    Color? iconColor,
    Color? backgroundColor,
    Color? color,
    String? title,
    IconData? iconData,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        color: backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 17,
              color: iconColor,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              title!,
              style: TextStyle(
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          bottomNavigatorBar(
            backgroundColor: textColor,
            color: Colors.white70,
            iconColor: Colors.grey,
            title: "Add To Wishlist",
            iconData: Icons.favorite_outline,
          ),
          bottomNavigatorBar(
            backgroundColor: primaryColor,
            color: textColor,
            iconColor: Colors.white70,
            title: "Go To Cart",
            iconData: Icons.shop_outlined,
          ),
        ],
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: textColor,
        ),
        title: Text(
          "Product Overview",
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  const ListTile(
                    title: Text("Fresh Basil"),
                    subtitle: Text("\$50"),
                  ),
                  Container(
                    height: 150,
                    padding: const EdgeInsets.all(40),
                    child: Image.network(
                        'https://cdnimg.webstaurantstore.com/uploads/blog/2021/5/fresh-dragon-fruit-sliced-in-half-on-wooden-board-min.jpg'),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    child: Text(
                      "Available Options",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.green[700],
                            ),
                            Radio(
                              activeColor: Colors.green[700],
                              value: SigninCharacter.fill,
                              groupValue: _character,
                              onChanged: (value) {
                                setState(() {
                                  _character = value!;
                                });
                              },
                            ),
                          ],
                        ),
                        const Text("\$50"),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                size: 15,
                                color: primaryColor,
                              ),
                              Text(
                                "Add",
                                style: TextStyle(
                                  color: primaryColor,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "About this products",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "A fruit is a mature, ripened ovary, along with the contents of the ovary. The ovary is the ovule-bearing reproductive structure in the plant flower. The ovary serves to enclose and protect the ovules, from the youngest stages of flower development until the ovules become fertilized and turn into seeds.",
                    style: TextStyle(
                      fontSize: 16,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
