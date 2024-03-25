import 'package:expense_tracker2/components/icon_link.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 80),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Welcome',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Back!',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: const Color(0xFFF3F3F3),
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Color.fromARGB(102, 88, 88, 88),
                    ),
                    hintText: 'Username or Email',
                  ),
                ),
              ),
              const SizedBox(height: 31),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: const Color(0xFFF3F3F3),
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Color.fromARGB(102, 88, 88, 88),
                    ),
                    suffixIcon: const Icon(
                      Icons.visibility,
                      color: Color.fromARGB(102, 88, 88, 88),
                    ),
                    hintText: 'Password',
                  ),
                ),
              ),
              const SizedBox(height: 9),
              const Padding(
                padding: EdgeInsets.only(right: 17),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Color(0xFFF83758)),
                  ),
                ),
              ),
              const SizedBox(height: 52),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF83758),
                        padding: const EdgeInsets.symmetric(vertical: 21),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4))),
                    child: Text(
                      'Login',
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 75),
              const Text('- OR Continue with -'),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Google Icon Button
                  IconLink(
                    image: 'assets/images/google.png',
                    onTap: () {},
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(width: 10),
                  IconLink(
                    image: 'assets/images/apple.png',
                    onTap: () {},
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(width: 10),
                  IconLink(
                    image: 'assets/images/facebook.png',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Create An Account',
                    style: GoogleFonts.montserrat(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'Sign up',
                    style: GoogleFonts.montserrat(
                      color: const Color(0xFFF83758),
                      decoration: TextDecoration.underline,
                      decorationColor: const Color(0xFFF83758),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
