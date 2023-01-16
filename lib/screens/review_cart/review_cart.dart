import 'package:flutter/material.dart';
import 'package:foodproject/config/colors.dart';

import '../../widgets/single_item.dart';

class ReviewCart extends StatelessWidget {
  const ReviewCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      bottomNavigationBar: ListTile(
        title: const Text("Total Amount"),
        subtitle: Text(
          "\$ 170.00",
          style: TextStyle(
            color: Colors.green[900],
          ),
        ),
        trailing: SizedBox(
          width: 160,
          child: MaterialButton(
            color: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            onPressed: () {},
            child: const Text("Submit"),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          "Review Cart",
          style: TextStyle(
            color: textColor,
            fontSize: 18,
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          SingleItem(
            isBool: true,
          ),
          SingleItem(
            isBool: true,
          ),
          SingleItem(
            isBool: true,
          ),
          SingleItem(
            isBool: true,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
