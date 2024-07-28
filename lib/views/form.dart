import 'package:flutter/material.dart';
import 'package:picapool_app/views/forms/first_page.dart';
import 'package:picapool_app/views/forms/second_page.dart';
import 'package:picapool_app/views/forms/third_page.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  int _currentStep = 0;
  List<Widget> _pages = [
    FirstPage(),
    SecondPage(),
    ThirdPage(),
  ];

  void _nextPage() {
    if (_currentStep < _pages.length - 1) {
      setState(() {
        _currentStep++;
      });
    }
  }

  void _previousPage() {
    if (_currentStep > 0) {
      setState(() {
        _currentStep--;
      });
    }
  }

  Widget _buildStepIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(_pages.length, (index) {
        return Expanded(
          child: Container(
            height: 5,
            color: _currentStep >= index ? Colors.orange : Colors.grey[300],
            margin: EdgeInsets.symmetric(horizontal: 4),
          ),
        );
      }),
    );
  }

  Widget _buildButton(String label, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        disabledBackgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: Colors.orange, width: 2),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 35,
                        ),
                        Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Location',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              size: 20,
                            ),
                          ],
                        ),
                        Text(
                          '6th st, Connaught place, New delhi ... ',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                      ],
                    ),
                    
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          SizedBox(height: 20),
          _buildStepIndicator(),
          Expanded(child: _pages[_currentStep]),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          if (_currentStep > 0)
            _buildButton('Previous', _previousPage),
          _buildButton('Next', _nextPage),
        ],
      ),
    );
  }
}
