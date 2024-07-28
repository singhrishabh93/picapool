import 'package:flutter/material.dart';
import 'package:picapool_app/views/ProductPage.dart';

class ProductGrid extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'image': 'assets/harrypotter.jpg',
      'title': 'Harry Potter Book',
      'price': '₹400',
      'originalPrice': '₹1098',
      'time': '2w ago',
    },
    {
      'image': 'assets/harrypotter.jpg',
      'title': 'Canon Camera',
      'price': '₹400',
      'originalPrice': '₹1098',
      'time': '2w ago',
    },
    {
      'image': 'assets/harrypotter.jpg',
      'title': 'OnePlus Phone',
      'price': '₹400',
      'originalPrice': '₹1098',
      'time': '2w ago',
    },
    {
      'image': 'assets/harrypotter.jpg',
      'title': 'Harry Potter Book',
      'price': '₹400',
      'originalPrice': '₹1098',
      'time': '2w ago',
    },
    {
      'image': 'assets/harrypotter.jpg',
      'title': 'Harry Potter Book',
      'price': '₹400',
      'originalPrice': '₹1098',
      'time': '2w ago',
    },
    {
      'image': 'assets/harrypotter.jpg',
      'title': 'Harry Potter Book',
      'price': '₹400',
      'originalPrice': '₹1098',
      'time': '2w ago',
    },
    {
      'image': 'assets/harrypotter.jpg',
      'title': 'Harry Potter Book',
      'price': '₹400',
      'originalPrice': '₹1098',
      'time': '2w ago',
    },
    {
      'image': 'assets/harrypotter.jpg',
      'title': 'Harry Potter Book',
      'price': '₹400',
      'originalPrice': '₹1098',
      'time': '2w ago',
    },
    {
      'image': 'assets/harrypotter.jpg',
      'title': 'Harry Potter Book',
      'price': '₹400',
      'originalPrice': '₹1098',
      'time': '2w ago',
    },
    {
      'image': 'assets/harrypotter.jpg',
      'title': 'Harry Potter Book',
      'price': '₹400',
      'originalPrice': '₹1098',
      'time': '2w ago',
    },
    {
      'image': 'assets/harrypotter.jpg',
      'title': 'Harry Potter Book',
      'price': '₹400',
      'originalPrice': '₹1098',
      'time': '2w ago',
    },
    {
      'image': 'assets/harrypotter.jpg',
      'title': 'Harry Potter Book',
      'price': '₹400',
      'originalPrice': '₹1098',
      'time': '2w ago',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 3 / 4,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductItem(
          image: products[index]['image'],
          title: products[index]['title'],
          price: products[index]['price'],
          originalPrice: products[index]['originalPrice'],
          time: products[index]['time'],
        );
      },
    );
  }
}

class ProductItem extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final String originalPrice;
  final String time;

  ProductItem({
    required this.image,
    required this.title,
    required this.price,
    required this.originalPrice,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  ProductDetailsPage()),
  );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    originalPrice,
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Text(
                time,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
