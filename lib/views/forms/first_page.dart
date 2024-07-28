import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        Text(
          'What are you selling?',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            children: [
              _buildCategoryItem(Icons.flash_on, 'Electronics'),
              _buildCategoryItem(Icons.shopping_bag, 'Clothes'),
              _buildCategoryItem(Icons.book, 'Books'),
              _buildCategoryItem(Icons.sports_soccer, 'Sports'),
              _buildCategoryItem(Icons.light_mode, 'Furniture'),
              _buildCategoryItem(Icons.car_rental, 'Vehicle'),
              // _buildCategoryItem(Icons.add, 'Other'),
            ],
          ),
        ),
        // Text(
        //   'Other',
        //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        // ),
      ],
    );
  }

 Widget _buildCategoryItem(IconData icon, String label) {
  return Container(
     margin: EdgeInsets.all(5),
    child: Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.grey, width: 1), // Adding a border to the card
      ),
      child: Container(
        height: 142, // Increase the height of the card
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50),
            SizedBox(height: 8),
            Text(label),
          ],
        ),
      ),
    ),
  );
}
}
