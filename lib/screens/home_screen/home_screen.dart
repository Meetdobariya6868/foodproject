import 'package:flutter/material.dart';
import 'package:foodproject/config/colors.dart';
import 'package:foodproject/screens/product_overview/product_overview.dart';
import '../../models/users.dart';
import 'drawer_side.dart';
import 'single_product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildHerbsProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Herbs Seasonings'),
              GestureDetector(
                child: const Text(
                  'view all',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingleProduct(
                onTap: () {
                  // setState(() {
                  //   Navigator.of(context).push(
                  //     MaterialPageRoute(
                  //       builder: (context) => ProductOverview(
                  //         productImage:
                  //             'https://cdnimg.webstaurantstore.com/uploads/blog/2021/5/fresh-dragon-fruit-sliced-in-half-on-wooden-board-min.jpg',
                  //         productName: 'Fresh Basil',
                  //       ),
                  //     ),
                  //   );
                  // });
                },
                productImage:
                    'https://cdnimg.webstaurantstore.com/uploads/blog/2021/5/fresh-dragon-fruit-sliced-in-half-on-wooden-board-min.jpg',
                productName: 'Fresh Basil',
              ),
              SingleProduct(
                onTap: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                productImage:
                    'https://www.exotic-fruit.com/img/products/totapuri_1.jpg',
                productName: 'Fresh Basil',
              ),
              SingleProduct(
                onTap: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                productImage:
                    'https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834',
                productName: 'Fresh Basil',
              ),
              SingleProduct(
                onTap: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                productImage:
                    'https://images.unsplash.com/photo-1550258987-190a2d41a8ba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                productName: 'Fresh Mint',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFreshProduct() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Fresh Fruits'),
              Text(
                'view all',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingleProduct(
                onTap: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                productImage:
                    'https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834',
                productName: 'Apple ',
              ),
              SingleProduct(
                onTap: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                productImage:
                    'https://cdn.shopify.com/s/files/1/0258/4307/3103/products/shop-online-from-india-fruits-anar-pomegranate-fresh-food-in-dubai-and-abu-dhabi-24621151886_1200x1200_a96f9476-ce73-4b3c-a618-9aa5726e0e54_1_600x.jpg?v=1643138211',
                productName: 'Apple ',
              ),
              SingleProduct(
                onTap: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                productImage:
                    'https://images.unsplash.com/photo-1601004890684-d8cbf643f5f2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=715&q=80',
                productName: 'Strawberry Mint',
              ),
              SingleProduct(
                onTap: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                productImage:
                    'https://cdn.pixabay.com/photo/2016/03/05/19/02/broccoli-1238250__340.jpg',
                productName: 'Strawberry Mint',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRootProduct() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Root Vegetables'),
              Text(
                'view all',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingleProduct(
                onTap: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                productImage:
                    'https://www.farmersfz.com/assets/public/vegimg/ladisfing1.jpg',
                productName: 'Ladies Finger',
              ),
              SingleProduct(
                onTap: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                productImage:
                    'https://www.farmersfz.com/assets/public/vegimg/beetroot1.jpg',
                productName: 'Beetroot Ooty',
              ),
              SingleProduct(
                onTap: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                productImage:
                    'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/carrot-overhead-group-lined-up-on-old-brown-wooden-royalty-free-image-625009188-1564523268.jpg?crop=0.66635xw:1xh;center,top&resize=480:*',
                productName: 'Beetroot Ooty',
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerSide(),
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: IconThemeData(color: textColor),
        title: Text(
          'Home',
          style: TextStyle(
            color: textColor,
            fontSize: 17,
          ),
        ),
        actions: [
          CircleAvatar(
            radius: 15,
            backgroundColor: const Color(0xffd6d382),
            child: IconButton(
              onPressed: () {
                return;
              },
              icon: Icon(
                Icons.search,
                color: textColor,
                size: 17,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: const Color(0xffd6d382),
              child: IconButton(
                onPressed: () {
                  return;
                },
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: textColor,
                  size: 17,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://health.clevelandclinic.org/wp-content/uploads/sites/3/2020/08/best-fruits-1197259281-770x533-1-650x428.jpg'),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 100, bottom: 10),
                          child: Container(
                            height: 50,
                            width: 120,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(50),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Vegi',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  shadows: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 12, 103, 15),
                                      blurRadius: 5,
                                      offset: Offset(3, 3),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '30% Off',
                          style: TextStyle(
                            color: Colors.green[100],
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'On all vegatable products',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            _buildHerbsProduct(context),
            _buildFreshProduct(),
            _buildRootProduct(),
          ],
        ),
      ),
    );
  }
}
