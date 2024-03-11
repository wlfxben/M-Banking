import 'package:flutter/material.dart';
import 'package:flutter_exam/homepages.dart';
import 'package:flutter_exam/pages/authentication.dart';
import 'package:flutter_exam/pages/onboarding.dart';
import 'package:flutter_exam/pages/register.dart';
import 'package:flutter_exam/pages/signin.dart';
import 'package:flutter_exam/pages/splash_screen.dart';
import 'theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:  {
        '/': (context) => const SplashPage(),
        '/onboard':(context) => const OnBoardPages(),
        '/sign-in' :(context) => const SignInPages(),
        '/sign-up':(context) => const Register(),
        '/authentication':(context) => AuthenticationPages(),
        '/home':(context) => const HomePages(),
      },
     
    );
  }


}


