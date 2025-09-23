import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markstudentshousing/core/constants/constants.dart';
import 'package:markstudentshousing/screens/signupscreen.dart';
import 'package:markstudentshousing/sharedwidgets/elevatedbutton.dart';
import 'package:markstudentshousing/sharedwidgets/textfieldwidget.dart';

class Loginscreens extends StatelessWidget {
  const Loginscreens({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Container(
                height: 150,
                width: 150,
                child: Image.asset(
                  "assets/images/Screenshot 2025-09-23 193728.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ksizedheight,
            Text(
              "MARK STUDENT HOUSING",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 94, 166, 225),
              ),
            ),
            SizedBox(height: height * 0.03),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/O4YIJB0.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login To Mark Students Housing',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      ksizedheight,
                      Text(
                        'Enter Your E-mail and Password',
                        style: GoogleFonts.poppins(color: Colors.white70),
                      ),

                      ksizedheight20,
                      CustomeTextField(
                        inputType: TextInputType.emailAddress,
                        label: "Enter Your Registered E-mail ",
                        hinttext: "Please Enter Your E-mail address",
                      ),
                      ksizedheight20,
                      CustomeTextField(
                        inputType: TextInputType.text,
                        label: "Enter Your Password",
                        hinttext: "Please Enter Your Password",
                        obscuretext: true,
                        suffixicon: Icons.visibility_off,
                      ),

                      ksizedheight20,
                      CustomElevatedButton(text: "Login", onPressed: () {}),
                      ksizedheight,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: GoogleFonts.poppins(color: Colors.white70),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Signupscreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
