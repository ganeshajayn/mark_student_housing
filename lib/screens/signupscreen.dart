import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markstudentshousing/core/constants/constants.dart';
import 'package:markstudentshousing/screens/loginscreens.dart';
import 'package:markstudentshousing/screens/otpscreens.dart';
import 'package:markstudentshousing/sharedwidgets/elevatedbutton.dart';
import 'package:markstudentshousing/sharedwidgets/textfieldwidget.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  bool isChecked = false;

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
                        'Sign Up Mark Students Housing',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      ksizedheight,
                      Text(
                        'Create your account to get started',
                        style: GoogleFonts.poppins(color: Colors.white70),
                      ),
                      ksizedheight20,
                      CustomeTextField(
                        inputType: TextInputType.name,
                        label: "Enter Your Full Name",
                        hinttext: "Please Enter Your Name",
                      ),
                      ksizedheight20,
                      CustomeTextField(
                        inputType: TextInputType.phone,
                        label: "Enter Your Phone Number",
                        hinttext: "Please Enter Your Phone Number",
                        prefixtext: "+ 91",
                      ),
                      ksizedheight20,
                      CustomeTextField(
                        inputType: TextInputType.text,
                        label: "Enter Your Password",
                        hinttext: "Please Enter Your Password",
                      ),
                      ksizedheight20,
                      CustomeTextField(
                        inputType: TextInputType.emailAddress,
                        label: "Enter Your E-mail address",
                        hinttext: "Please Enter Your E-mail address",
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value ?? false;
                                Icon(Icons.trending_up, color: Colors.green);
                              });
                            },
                            activeColor: Colors.white,
                          ),
                          ksizedheight20,
                          Expanded(
                            child: Text(
                              'I agree with all the terms and \nconditions of Mark Students Housing',
                              style: TextStyle(color: Colors.white70),
                            ),
                          ),
                        ],
                      ),
                      ksizedheight20,
                      CustomElevatedButton(
                        text: "Sign Up",
                        onPressed: isChecked
                            ? () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Verificationscreen(),
                                  ),
                                );
                              }
                            : null,
                      ),
                      ksizedheight,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: GoogleFonts.poppins(color: Colors.white70),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Loginscreens(),
                                ),
                              );
                            },
                            child: Text(
                              'Login',
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
