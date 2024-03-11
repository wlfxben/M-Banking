import 'package:flutter/material.dart';
import 'package:flutter_exam/theme.dart';
import 'package:flutter_exam/pages/authentication.dart';



class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {

    Widget header(){
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

  Widget registertitle () {
    return Container(
       margin: const EdgeInsets.only(top: 40,
        left: 2,),
        alignment: Alignment.topLeft,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('REGISTER', style: primaryTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 32,

            ),
            ),
          ]
        ),
    );
  }

  Widget registemail () {
    return Container(
       margin: const EdgeInsets.only(top: 37,),
      alignment: Alignment.topLeft,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Email', style: primaryTextStyle.copyWith(
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
                        hintText: 'Your Email',
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

  Widget registusn (){
    return Container(
       margin: const EdgeInsets.only(top: 37,),
      alignment: Alignment.topLeft,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Username', style: primaryTextStyle.copyWith(
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
                        hintText: 'Your Username',
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

  Widget registphone (){
    return Container(
       margin: const EdgeInsets.only(top: 37,),
      alignment: Alignment.topLeft,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Phone', style: primaryTextStyle.copyWith(
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
                        hintText: 'Your Phone Number',
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


  Widget registpassword (){
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
        ]
      ),
      );
  }

  Widget registbutton (){
    return Container(
       height: 53,
        width: 343,
        margin: const EdgeInsets.only(top: 50),
        child: TextButton(
          onPressed: (){
            Navigator.pushNamed(context,'/authentication');
          },
          style: TextButton.styleFrom(
            backgroundColor: primarycolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            )
          ),
          child: Text(
            'Register',
            style: thirdTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
            ),
          ),
    );
  }


    return Scaffold(
      body: SafeArea(child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: ListView(
          children: [
          header(),
          registertitle(),
          registemail(),
          registusn(),
          registphone(),
          registpassword(),
          registbutton(),
          ],
        ),
      )
      ),

    );
  }
}