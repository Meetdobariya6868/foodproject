import 'package:flutter/material.dart';

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
        style: const TextStyle(
          color: Colors.black45,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xffd1ad17),
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white54,
                    radius: 43,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.red,
                      child: Image(
                        fit: BoxFit.contain,
                        image: NetworkImage(
                            'https://resize.indiatvnews.com/en/resize/newbucket/730_-/2016/05/facebook-shadow-profiles-1464598164.jpg'),
                      ),
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
