import 'package:flutter/material.dart';

class Paymentpage extends StatefulWidget {
  const Paymentpage({super.key});

  @override
  State<Paymentpage> createState() => _PaymentpageState();
}

class _PaymentpageState extends State<Paymentpage> {
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
              Color.fromRGBO(255, 152, 0, 1),
              Color.fromARGB(255, 225, 100, 1),
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
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Checkout Page",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.arrow_back),
                              onPressed: () {
                                Navigator.pushNamed(context, '/Homepage');
                              },
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Shipping Address',
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(220, 219, 219, 215),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start, 
                            children: [
                              Text(
                                "Elwin P",
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Chicago Xyz Street",
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "DMC 1001, Illinois, US",
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              
                              Text(
                                "+95 xxxxxx9056",
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Payment',
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                         Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(220, 219, 219, 215),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nuhuh Bank",
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "**** **** **** 7239",
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              
                              SizedBox(height: 5),
                            ],
                          ),
                        ),
                        SizedBox(height: 60,),
                        Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children:[
                                   Text(
                                    'Order: ',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                    '674 \$',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                    ),
                                     ],
                                   ),
                                   Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children:[
                                   Text(
                                    'Delivery: ',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                    '10 \$',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                    ),
                                     ],
                                   ),
                                   SizedBox(height: 10,),
                                   Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children:[
                                   Text(
                                    'Total: ',
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                    '684 \$',
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                    ),
                                     ],
                                   ),
                                   SizedBox(height: 20,),
                                   ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                                        backgroundColor: Color.fromARGB(255, 238, 118, 20),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/Paymentsuccess');
                                      },
                                      child: Text(
                                        'PROCEED',
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                                      ),
                                    )
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
