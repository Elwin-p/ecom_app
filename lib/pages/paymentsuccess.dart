import 'package:flutter/material.dart';

class Paymentsuccess extends StatefulWidget {
  const Paymentsuccess({super.key});

  @override
  State<Paymentsuccess> createState() => _PaymentsuccessState();
}

class _PaymentsuccessState extends State<Paymentsuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            colors: [
              Color.fromARGB(255, 243, 111, 4),
              Color.fromARGB(255, 235, 121, 28),
              const Color.fromRGBO(255, 152, 0, 1),
              Color.fromARGB(255, 225, 100, 1)
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.all(2),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 1),
                  Text(
                    "#GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 7,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 1),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 200,),
                            Text(
                              "Payment Successful",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 100,),
                            Text(
                              "Your payment is done successfully. Your order will reach at your shipping address within 2-4 days. Thanks for buying from us:)",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 80),
                        ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                                        backgroundColor: Color.fromARGB(255, 238, 118, 20),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/Homepage');
                                      },
                                      child: Text(
                                        'CONTINUE SHOPPING',
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                                      ),
                                    ),
                        
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
