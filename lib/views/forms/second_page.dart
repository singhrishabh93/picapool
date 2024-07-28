import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            'Include some details',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.grey[200],
                      child: Center(child: Icon(Icons.add, size: 50)),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.grey[200],
                      child: Center(child: Icon(Icons.add, size: 50)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(labelText: 'Title'),
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(labelText: 'Add description'),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildConditionItem(Icons.new_releases, 'New'),
                  _buildConditionItem(Icons.handshake, 'Used'),
                  _buildConditionItem(Icons.build, 'Repaired'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildConditionItem(IconData icon, String label) {
    return Container(
     margin: EdgeInsets.all(5),
    child: Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.grey, width: 1), // Adding a border to the card
      ),
      child: Container(
        height: 120,
        width: 100, // Increase the height of the card
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
