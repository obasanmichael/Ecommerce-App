import 'package:expense_tracker2/components/custom_bottom_bar.dart';
import 'package:expense_tracker2/components/custom_splash_appbar.dart';
import 'package:expense_tracker2/components/header_text.dart';
import 'package:expense_tracker2/screens/auth/blocs/sign_in.dart';
import 'package:expense_tracker2/screens/home/views/intermediate_splash_screen2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageViewModel(
              titleWidget: Text(
                "Choose Products",
                style: GoogleFonts.montserrat(
                    fontSize: 24, fontWeight: FontWeight.w800),
              ),
              bodyWidget: Text(
                textAlign: TextAlign.center,
                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xAAA8A8A9),
                ),
              ),
              image: Center(
                
                child: Image.asset(
                  'assets/images/fashion_shop.png',
                  height: 400,
                ),
              )),
          PageViewModel(
              titleWidget: Text(
                "Make Payment",
                style: GoogleFonts.montserrat(
                    fontSize: 24, fontWeight: FontWeight.w800),
              ),
              bodyWidget: Text(
                textAlign: TextAlign.center,
                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xAAA8A8A9),
                ),
              ),
              image: Center(
                child: Image.asset(
                  'assets/images/sales_shop.png',
                  height: 400,
                ),
              )),
        ],
        onDone: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SignIn(),
            ),
          );
        },
        onSkip: () {},
        showBackButton: true,
        showBottomPart: true,
        showSkipButton: false,
        back: Text(
          'Prev',
          style: GoogleFonts.montserrat(
              color: const Color(0xCCC4C4C4),
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
        skip: Text('Skip'),
        next: Text(
          'Next',
          style: GoogleFonts.montserrat(
              color: const Color(0xFFF83758),
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
        done: Text(
          'Done',
          style: GoogleFonts.montserrat(
              color: const Color(0xFFF83758),
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            color: const Color(0xAAA8A8A9),
            activeColor: Colors.black,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            )),
      ),
    );
  }
}
// class IntermediateSplashScreen1 extends StatelessWidget {
//   const IntermediateSplashScreen1({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const CustomSplashAppBar(
//         currentIndex: 1,
//         totalScreens: 3,
//       ),
//       body: const Padding(
//         padding: EdgeInsets.all(17.0),
//         child: Center(
//           child: HeaderText(
//               header: 'Choose Products',
//               subText:
//                   'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.'),
//         ),
//       ),
//       bottomNavigationBar: CustomBottomBar(
//         onNext: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => const IntermediateSplashScreen2()),
//           );
//         },
//         imageName: 'assets/images/circle.png', // Your central image asset path
//       ),
//     );
//   }
// }
