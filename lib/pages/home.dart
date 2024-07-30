import 'package:ecom_app/pages/orderpage.dart';
import 'package:ecom_app/pages/profilepage.dart';
import 'package:ecom_app/pages/searchpage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int myIndex = 0;

  final List<Widget> _pages = [
    HomeContent(), 
    Searchpage(),
    Orderpage(),
    Profilepage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomNavigationBar(),
      body: _pages[myIndex],
    );
  }

  Widget buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: myIndex,
      onTap: (index) {
        setState(() {
          myIndex = index;
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.black),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search, color: Colors.black),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_checkout, color: Colors.black),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle, color: Colors.black),
          label: 'Profile',
        ),
      ],
      selectedItemColor: Colors.black,
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
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
            const SizedBox(height: 1),
            const Text(
              "#GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY",
              style: TextStyle(
                color: Colors.white,
                fontSize: 7,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 1),
            buildMainContent(),
          ],
        ),
      ),
    );
  }

  Widget buildMainContent() {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        children: <Widget>[
          buildHeaderImage(),
          const SizedBox(height: 16),
          buildSectionTitle('New Arrival', 'Upto 30% discounts'),
          const SizedBox(height: 16),
          buildProductGrid(ProductCard(), 4),
          const SizedBox(height: 20),
          buildSectionTitle('Top Sellers', 'Upto 15% discounts'),
          const SizedBox(height: 16),
          buildProductGrid(ProductCard1(), 4),
        ],
      ),
    );
  }

  Widget buildHeaderImage() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          child: Image.asset(
            'assets/images/shoes_ecom.jpeg',
            width: double.infinity,
            height: 450,
            fit: BoxFit.cover,
          ),
        ),
        const Positioned(
          top: 250,
          left: 16,
          child: Text(
            '#GET SASSY',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Color(0xEDFFFFFF),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildSectionTitle(String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: const TextStyle(
              color: Color.fromARGB(255, 238, 118, 20),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget buildProductGrid(Widget productCard, int itemCount) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: .95,
      ),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return productCard;
      },
    );
  }
}

class ProductCard extends StatefulWidget {
  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: Image.asset(
              'assets/images/shoes_all.jpg', 
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard1 extends StatefulWidget {
  @override
  State<ProductCard1> createState() => _ProductCard1State();
}

class _ProductCard1State extends State<ProductCard1> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: Image.asset(
              'assets/images/shoes_all.jpg', 
              
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
        ],
      ),
    );
  }
}
