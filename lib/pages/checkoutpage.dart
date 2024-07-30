import 'package:flutter/material.dart';

class Checkoutpage extends StatefulWidget {
  const Checkoutpage({super.key});

  @override
  State<Checkoutpage> createState() => _CheckoutpageState();
  
}

class _CheckoutpageState extends State<Checkoutpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.center,

          colors: 
        [
          Color.fromARGB(255, 243, 111, 4),
          Color.fromARGB(255, 235, 121, 28),
            const Color.fromRGBO(255, 152, 0, 1),
            Color.fromARGB(255, 225, 100, 1)
        
        ])
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 5,),
            Padding(
              padding: EdgeInsets.all(2),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 1,),
                 Text("#GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY",style: TextStyle(color: Colors.white,fontSize: 7,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
                 SizedBox(height: 1,),

                ],
              ),
            ),
            Expanded(
              child:Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))

                ),
                              
              ),
            )
          ],
        )
        
      ),
    );
  }
}