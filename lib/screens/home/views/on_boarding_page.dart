import 'package:expense_tracker2/screens/auth/blocs/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late PageController _pageController;
  int selectedPage = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void nextPage() {
    if (selectedPage < demoData.length - 1) {
      setState(() {
        selectedPage++;
      });
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  void previousPage() {
    if (selectedPage > 0) {
      setState(() {
        selectedPage--;
      });
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  void navigateToSignIn() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignIn()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(16.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${selectedPage + 1}/${demoData.length}',
                    style: GoogleFonts.montserrat(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: navigateToSignIn,
                    child: Text(
                      'Skip',
                      style: GoogleFonts.montserrat(
                          fontSize: 18.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: PageView.builder(
                  itemCount: demoData.length,
                  controller: _pageController,
                  itemBuilder: (context, index) => OnBoardContent(
                    description: demoData[index].description,
                    image: demoData[index].image,
                    title: demoData[index].title,
                  ),
                ),
              ),
              Row(
                children: [
                  if (selectedPage != 0)
                    TextButton(
                      onPressed: previousPage,
                      child: Text(
                        'Prev',
                        style: GoogleFonts.montserrat(
                            fontSize: 18.sp,
                            color: const Color(0xCCC4C4C4),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      if (selectedPage == demoData.length - 1) {
                        navigateToSignIn();
                      } else {
                        nextPage();
                      }
                    },
                    child: Text(
                      selectedPage == demoData.length - 1 ? 'Done' : 'Next',
                      style: GoogleFonts.montserrat(
                          fontSize: 18.sp,
                          color: const Color(0xFFF83758),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OnBoard {
  final String image, title, description;

  OnBoard(
      {required this.description, required this.image, required this.title});
}

final List<OnBoard> demoData = [
  OnBoard(
    title: 'Choose Product',
    description:
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
    image: 'assets/images/fashion_shop.png',
  ),
  OnBoard(
    title: 'Make Payment',
    description:
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
    image: 'assets/images/sales_shop.png',
  ),
];

class OnBoardContent extends StatelessWidget {
  const OnBoardContent(
      {super.key,
      required this.description,
      required this.image,
      required this.title});
  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(image, height: 300.h),
        // const Spacer(),
        Text(
          title,
          style:
              GoogleFonts.montserrat(fontSize: 24.sp, fontWeight: FontWeight.w800),
        ),
         SizedBox(height: 16.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style:  TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xAAA8A8A9),
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
      // body: IntroductionScreen(
      //   globalBackgroundColor: Colors.white,
      //   scrollPhysics: const BouncingScrollPhysics(),
      //   pages: [
      //     PageViewModel(
      //         titleWidget: Text(
      //           "Choose Products",
      //           style: GoogleFonts.montserrat(
      //               fontSize: 24, fontWeight: FontWeight.w800),
      //         ),
      //         bodyWidget: Text(
      //           textAlign: TextAlign.center,
      //           'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
      //           style: GoogleFonts.montserrat(
      //             fontSize: 14,
      //             fontWeight: FontWeight.w600,
      //             color: const Color(0xAAA8A8A9),
      //           ),
      //         ),
      //         image: Center(
      //           child: Image.asset(
      //             'assets/images/fashion_shop.png',
      //             height: 400,
      //           ),
      //         )),
      //     PageViewModel(
      //         titleWidget: Text(
      //           "Make Payment",
      //           style: GoogleFonts.montserrat(
      //               fontSize: 24, fontWeight: FontWeight.w800),
      //         ),
      //         bodyWidget: Text(
      //           textAlign: TextAlign.center,
      //           'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
      //           style: GoogleFonts.montserrat(
      //             fontSize: 14,
      //             fontWeight: FontWeight.w600,
      //             color: const Color(0xAAA8A8A9),
      //           ),
      //         ),
      //         image: Center(
      //           child: Image.asset(
      //             'assets/images/sales_shop.png',
      //             height: 400,
      //           ),
      //         )),
      //   ],
      //   onDone: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => const SignIn(),
      //       ),
      //     );
      //   },
      //   onSkip: () {},
      //   showBackButton: true,
      //   showBottomPart: true,
      //   showSkipButton: false,
      //   back: Text(
      //     'Prev',
      //     style: GoogleFonts.montserrat(
      //         color: const Color(0xCCC4C4C4),
      //         fontSize: 18,
      //         fontWeight: FontWeight.w600),
      //   ),
      //   skip: Text('Skip'),
      //   next: Text(
      //     'Next',
      //     style: GoogleFonts.montserrat(
      //         color: const Color(0xFFF83758),
      //         fontSize: 18,
      //         fontWeight: FontWeight.w600),
      //   ),
      //   done: Text(
      //     'Done',
      //     style: GoogleFonts.montserrat(
      //         color: const Color(0xFFF83758),
      //         fontSize: 18,
      //         fontWeight: FontWeight.w600),
      //   ),
      //   dotsDecorator: DotsDecorator(
      //       size: const Size.square(10.0),
      //       activeSize: const Size(20.0, 10.0),
      //       color: const Color(0xAAA8A8A9),
      //       activeColor: Colors.black,
      //       spacing: const EdgeInsets.symmetric(horizontal: 3.0),
      //       activeShape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(25.0),
      //       )),
      // ),
    

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
