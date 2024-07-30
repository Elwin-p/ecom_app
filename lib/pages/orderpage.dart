import 'package:flutter/material.dart';

class Orderpage extends StatefulWidget {
  const Orderpage({super.key});

  @override
  State<Orderpage> createState() => _OrderpageState();
}

class _OrderpageState extends State<Orderpage> {
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Your Cart",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_border),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        CartItem(
                          image: 'assets/images/shoes_boots.jpg',
                          name: 'Boots',
                          color: 'Brown',
                          size: 'M',
                          price: 100,
                        ),
                        CartItem(
                          image: 'assets/images/shoes_firstcopy.jpg',
                          name: 'First-Copy Shoe',
                          color: 'Grey',
                          size: 'S',
                          price: 499,
                        ),
                        CartItem(
                          image: 'assets/images/shoes_canvas.jpg',
                          name: 'Canvas Shoe',
                          color: 'White',
                          size: 'L',
                          price: 75,
                        ),
                        SizedBox(height: 20),
                        PromoCodeInput(),
                        SizedBox(height: 20),
                        TotalAmount(total: 674),
                        SizedBox(height: 20),
                        CheckoutButton(),
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

class CartItem extends StatelessWidget {
  final String image;
  final String name;
  final String color;
  final String size;
  final int price;

  const CartItem({
    Key? key,
    required this.image,
    required this.name,
    required this.color,
    required this.size,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Image.asset(image, width: 80, height: 80),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text('Color: $color'),
                Text('Size: $size'),
                SizedBox(height: 5),
                Text('\$$price', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            Spacer(),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {},
                ),
                Text('1'),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PromoCodeInput extends StatelessWidget {
  const PromoCodeInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Enter your promo code',
        border: OutlineInputBorder(borderRadius: BorderRadius.all( Radius.circular(50))),
        suffixIcon: IconButton(
          icon: Icon(Icons.arrow_forward),
          onPressed: () {},
        ),
      ),
    );
  }
}

class TotalAmount extends StatelessWidget {
  final int total;

  const TotalAmount({
    Key? key,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Total amount:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          '\$$total',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        backgroundColor: Color.fromARGB(255, 238, 118, 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/Paymentpage');
      },
      child: Text(
        'CHECK OUT',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
      ),
    );
  }
}
