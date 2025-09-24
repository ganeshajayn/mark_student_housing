import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markstudentshousing/core/constants/constants.dart';
import 'package:markstudentshousing/screens/loginscreens.dart';
import 'package:markstudentshousing/screens/profilescreen.dart';
import 'package:markstudentshousing/sharedwidgets/elevatedbutton.dart';
import 'package:pinput/pinput.dart';

class Verificationscreen extends StatelessWidget {
  const Verificationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 20,
        color: Colors.blue,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
    );
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/O4YIJB0.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              height: height * 0.4,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/Screenshot 2025-09-23 193728.png",
                  ),
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    "MARK STUDENT HOUSING",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Color.fromARGB(255, 94, 166, 225),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            ksizedheight20,
            Text(
              "Verification",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            ksizedheight,
            Column(
              children: [
                Text(
                  "we've sent you the verification code",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white38),
                ),
                Text(
                  "to ",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            ksizedheight20,

            Center(child: Pinput(length: 4, defaultPinTheme: defaultPinTheme)),
            ksizedheight20,
            ksizedheight,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomElevatedButton(
                text: "Continue",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
              ),
            ),
            ksizedheight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "You did'nt recieve any code?",
                  style: TextStyle(color: Colors.white70),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Resend Code",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.06),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Having trouble?",
                  style: TextStyle(color: Colors.white70),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Loginscreens()),
                    );
                  },
                  child: Text(
                    "Back to Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
