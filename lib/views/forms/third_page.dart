import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            'Almost done',
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
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Years'),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Months'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              CheckboxListTile(
                title: Text('Less than a month'),
                value: false,
                onChanged: (bool? value) {},
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(labelText: 'Reason for sell'),
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(labelText: 'Selling price'),
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(labelText: 'Ph no'),
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(labelText: 'Enter email ID'),
              ),
            ],
          ),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {},
          child: Text('Sell now', style: TextStyle(fontSize: 18, color: Colors.white),),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
          ),
        ),
      ],
    );
  }
}
