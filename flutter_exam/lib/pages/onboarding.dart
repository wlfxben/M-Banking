import 'package:flutter/material.dart';
import 'package:flutter_exam/theme.dart';
import 'package:flutter_exam/pages/signin.dart';
class OnBoardPages extends StatelessWidget {
  const OnBoardPages({super.key});

  @override
  Widget build(BuildContext context) {

    Widget OnBoardButton (){
      return Container(
        height: 53,
        width: 343,
        margin: const EdgeInsets.only(top: 90),
        child: TextButton(
          onPressed: (){
            Navigator.pushNamed(context, '/sign-in');
          },
          style: TextButton.styleFrom(
            backgroundColor: primarycolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            )
          ),
          child: Text(
            'Get Started',
            style: thirdTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
            ),
          ),
          
      );
    }


    return  Scaffold(
      body: SafeArea(
        child:Column( 
          children: [
          
            const SizedBox(
              height: 21,

            ),
            _logo(),
             const SizedBox(
              height: 50,
            ),
            _card(),
             const SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                'Choose as needed',
                style: primaryTextStyle.copyWith(
                  fontSize: 30,
                  fontWeight: medium,
                ),
                ),
            ),
           Center(
            child:  Container(
              margin: EdgeInsets.only(
                top: 15,
                left: 30,
                right: 30,
              ),
            
              child: Text(
                'Choose the savings you want to open, we have lots of services according to what you need',
                style: secondaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: reguler
                ),
                ),
            ),
           ),
            OnBoardButton(),
          ],
        ))
    );
  }

  Center _card() {
    return Center(
            child: Container(
              width: 327.88,
              height: 261,
              margin: EdgeInsets.only(
                top: 20,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/Card.png'))
              ),
            ),
          );
  }

  Padding _logo() {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/logoheader.png',
                width: 30,
                height: 30,),
                Image.asset('assets/translate.png',
                width: 30,
                height: 30,)                
              ],              
            ),
          );
  }
}