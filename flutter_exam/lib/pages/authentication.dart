import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_exam/pages/signin.dart';
import 'package:flutter_exam/theme.dart';


void main() {
  runApp(AuthenticationPages());
}



class AuthenticationPages extends StatefulWidget {
  @override
  _AuthenticationPages createState() => _AuthenticationPages();
}

class _AuthenticationPages extends State<AuthenticationPages> {
  String _securityCode = '';

  void _addNumber(String number) {
    setState(() {
      if (_securityCode.length < 4) {
        _securityCode += number;
      }
    });
  }

  void _removeNumber() {
    setState(() {
      if (_securityCode.length > 0) {
        _securityCode = _securityCode.substring(0, _securityCode.length - 1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: const EdgeInsets.only(top: 27),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignInPages()));
          },
          icon: Image.asset('assets/logoheader.png'),
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(top: 20),
            icon: const Icon(Icons.translate),
            onPressed: () => exit(0),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/lock.png', width: 100, height: 80,),
            Text(
              'Enter Security Code',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                4,
                (index) => Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Colors.green), // Green color border
                    borderRadius: BorderRadius.circular(5), // Rounded border
                  ),
                  child: Center(
                    child: Text(
                      _securityCode.length > index ? _securityCode[index] : '',
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Padding(padding: EdgeInsets.only(top: 300)),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 3,
                mainAxisSpacing: .0,
                crossAxisSpacing: 5.0,
                children: List.generate(
                  10,
                  (index) => TextButton(
                    onPressed: () {
                      if (index < 9) {
                        _addNumber('${index + 1}');
                      } else {
                        _addNumber('0');
                      }
                    },
                    child: Text(
                      '${index != 9 ? index + 1 : 0}',
                      style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.black), // Font color is default black
                    ),
                  ),
                )..add(
                    TextButton(
                      onPressed: _removeNumber,
                      child: Icon(Icons.backspace,
                          color:
                              Colors.black), // White color for backspace icon
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