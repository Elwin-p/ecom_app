import 'package:ecom_app/pages/forgotpage.dart';
import 'package:ecom_app/pages/searchpage.dart';
import 'package:flutter/material.dart';
import 'package:ecom_app/pages/checkoutpage.dart';
import 'package:ecom_app/pages/home.dart';
import 'package:ecom_app/pages/login.dart';
import 'package:ecom_app/pages/orderpage.dart';
import 'package:ecom_app/pages/paymentpage.dart';
import 'package:ecom_app/pages/profilepage.dart';
import 'package:ecom_app/pages/settingpage.dart';
import 'package:ecom_app/pages/paymentsuccess.dart';
import 'package:ecom_app/pages/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecom App',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Loginpage(),
      routes: {
        '/Signinpage':(context) => const Signinpage(),
        '/Homepage':(context) => const Homepage(),
        '/Forgotpage':(context) => const Forgotpage(),
        '/Orderpage':(context) => const Orderpage(),
        '/Searchpage':(context) => const Searchpage(),
        '/Profilepage':(context) => const Profilepage(),
        '/Paymentpage':(context) => const Paymentpage(),
        '/Paymentsuccess':(context) => const Paymentsuccess(),
        '/Settingpage':(context) => const Settingpage(),
        
      },
      
    );
  }
}
