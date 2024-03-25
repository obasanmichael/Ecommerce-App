import 'package:expense_tracker2/components/custom_bottom_bar.dart';
import 'package:expense_tracker2/components/custom_splash_appbar.dart';
import 'package:expense_tracker2/components/header_text.dart';
import 'package:expense_tracker2/screens/auth/blocs/sign_in.dart';
import 'package:flutter/material.dart';

class IntermediateSplashScreen2 extends StatelessWidget {
  const IntermediateSplashScreen2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomSplashAppBar(
        currentIndex: 2,
        totalScreens: 3,
      ),
      body: const Padding(
        padding: EdgeInsets.all(17.0),
        child: Center(
          child: HeaderText(
              header: 'Make Payment',
              subText:
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.'),
        ),
      ),
      bottomNavigationBar: CustomBottomBar(
        onPrevious: () {
          Navigator.pop(context);
        },
        onNext: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SignIn()),
          );
        },
        imageName: 'assets/images/circle2.png', // Your central image asset path
      ),
    );
  }
}
