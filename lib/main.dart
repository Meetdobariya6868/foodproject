import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:foodproject/config/colors.dart';
import 'package:foodproject/screens/product_overview/product_overview.dart';
import 'screens/home_screen/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // routes: {
      //   '/':(context) => HomeScreen(),
      //   'product_overview':(context) => ProductOverview(productName: 'productName', productImage: 'productImage'),
      // },
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: primaryColor,
        backgroundColor: scaffoldBackgroundColor,
      ),
      home: const HomeScreen(),
    );
  }
}
