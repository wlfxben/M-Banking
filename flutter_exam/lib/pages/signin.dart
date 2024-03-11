import 'package:flutter/material.dart';
import 'package:flutter_exam/theme.dart';

class SignInPages extends StatelessWidget {
  const SignInPages({super.key});

  @override
  Widget build(BuildContext context) {

    Widget header (){
      return Container(
        margin: const EdgeInsets.only(
          top: 20, ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/logoheader.png',
                width: 30,
                height: 30,),
                Image.asset('assets/translate.png',
                width: 30,
                height: 30,),              
            ],                     
          ),
          
      );
    } 
   
   Widget title(){
    return Container(
        margin: const EdgeInsets.only(top: 40,
        left: 2,),
        alignment: Alignment.topLeft,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('WELCOME', style: primaryTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 32,

            ),
            ),
           const SizedBox(height: 20,),
           Text('Enjoy all the features that make it easy for you to manage your finances', 
              style: secondaryTextStyle.copyWith(
                fontWeight: reguler,
                fontSize: 12,
              ),
           )
          ],
        ),
    );
   }

  Widget emailInput (){
    return Container(
      margin: const EdgeInsets.only(top: 37,),
      alignment: Alignment.topLeft,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Email/Username', style: primaryTextStyle.copyWith(
            fontWeight: semiBold,
          ),
          ),
        const  SizedBox(
            height: 12,
            ),
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: boxcolor,
                borderRadius: BorderRadius.circular(12,),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(child: TextFormField( 
                      decoration:  InputDecoration.collapsed(
                        hintText: 'Your Email/username',
                        hintStyle: textboxTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: reguler,
                        )
                      ),
                    )),
                  ],
                ),
              ),
            
          )
        ],
      ),
    );
  }

   Widget passwordInput (){
    bool _isChecked = false;
    return Container(
      margin: const EdgeInsets.only(top: 37,),
      alignment: Alignment.topLeft,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Password', style: primaryTextStyle.copyWith(
            fontWeight: semiBold,
          ),
          ),
        const  SizedBox(
            height: 12,
            ),
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: boxcolor,
                borderRadius: BorderRadius.circular(12,),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(child: TextFormField( 
                      obscureText: true,
                      decoration:  InputDecoration.collapsed(             
                        hintText: 'Your Password',
                        hintStyle: textboxTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: reguler,
                        ),
                      ),
                    ),                
                    ),
                  ],                
                ),
              ),  
                   
          ),
           const SizedBox(height: 10,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [                    
                        Container(
                         
                          child: Checkbox(
                            value: _isChecked,
                            onChanged: (value) {_isChecked = value!;},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)
                            ),
                            ),
                        ),
                          const Text('Remember me' ),
                           const SizedBox(width: 40), // Add some horizontal spacing
                            GestureDetector(
                            onTap: () {},                                        
                           child: Text('Forgot Password?'),
                           ),

                      ],
                     )
        ],
      ),
      
    );
      
  }

    Widget SignInButton (){
      return Container(
        height: 53,
        width: 343,
        margin: const EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: (){
            Navigator.pushNamed(context, '/home');
          },
          style: TextButton.styleFrom(
            backgroundColor: primarycolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            )
          ),
          child: Text(
            'Sign In',
            style: thirdTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
            ),
          ),
          
      );
    }

      Widget Other(){
        return Container(
            padding: const EdgeInsets.only(
                top: 20,
              ),
              alignment: Alignment.center,
              // decoration:
              // BoxDecoration(border: Border.all(color: Colors.black)),
              child: Text(
                'Other',
                style: secondaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: reguler,
                    ),
              ),   
                     
            );         
      }


      Widget Otherbtn(){
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10,),
          ),
          padding: const EdgeInsets.only( top: 10, bottom: 5, left: 20, right: 20, ),
         
        );
      }

      Widget Footer(){
        return Container(
           margin: const EdgeInsets.only(bottom: 30),
           child:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t Have an Account?',
              style: secondaryTextStyle.copyWith(
                fontSize: 12,
              ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/sign-up');
                },
                child: Text(
                  'Register', 
                  style: greentextstyle.copyWith(
                    fontSize: 12, 
                    ),
                  ),
              )
            ],
           ),
        );
      }



    return Scaffold(    
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            children: [
              header(),
              title(),
              emailInput(),
              passwordInput(),
              SignInButton(),
              Other(),
              Otherbtn(),
            const Spacer(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
