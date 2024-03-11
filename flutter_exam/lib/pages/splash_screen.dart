import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}
  
 

class _SplashPageState extends State<SplashPage> {

  @override
  void  initState() {
    // TODO: implement initState
     Timer(Duration(seconds: 2), () =>  Navigator.pushNamed(context, '/onboard'),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(
              'assets/logoheader.png')
              )
          ),
        ),
      ),
    );
  }
}