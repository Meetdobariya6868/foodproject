import 'package:flutter/material.dart';
import 'package:foodproject/config/colors.dart';

class DrawerSide extends StatelessWidget {
  const DrawerSide({super.key});

  Widget listTile({IconData? icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: textColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: primaryColor,
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 43,
                    backgroundColor: Colors.white54,
                    child: CircleAvatar(
                      backgroundColor: Colors.yellow,
                      backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu-mQF_UUZagnb5DP7M4MiRETlP-byM-qeZQ&usqp=CAU',
                      ),
                      radius: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Welcome Guest'),
                      const SizedBox(
                        height: 7,
                      ),
                      SizedBox(
                        height: 30,
                        child: OutlinedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                            side: MaterialStatePropertyAll(
                              BorderSide(
                                color: Colors.black,
                                width: 2.0,
                              ),
                            ),
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            listTile(
              icon: Icons.home_outlined,
              title: "Home",
            ),
            listTile(
              icon: Icons.shop_outlined,
              title: "Review Cart",
            ),
            listTile(
              icon: Icons.person_outline,
              title: "My Profile",
            ),
            listTile(
              icon: Icons.notifications_outlined,
              title: "Notification",
            ),
            listTile(
              icon: Icons.star_outline,
              title: "Rating & Review",
            ),
            listTile(
              icon: Icons.favorite_outline,
              title: "Wishlist",
            ),
            listTile(
              icon: Icons.copy_outlined,
              title: "Raise a Complaint",
            ),
            listTile(
              icon: Icons.format_quote_outlined,
              title: "FAQs",
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Contact Support",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: const [
                      Text('Call us:'),
                      SizedBox(
                        width: 10,
                      ),
                      Text('+91123456789'),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        Text('Mail us:'),
                        SizedBox(
                          width: 10,
                        ),
                        Text('johnabrahm123@gmail.com'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
