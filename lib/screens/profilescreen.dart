import 'package:flutter/material.dart';
import 'package:markstudentshousing/core/constants/constants.dart';
import 'package:markstudentshousing/sharedwidgets/elevatedbutton.dart';
import 'package:markstudentshousing/sharedwidgets/textfieldwidget.dart';
import 'package:markstudentshousing/sharedwidgets/textwigets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nationalityController = TextEditingController();
  final TextEditingController passportController = TextEditingController();

  String? gender;
  DateTime? dob;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 34, 196, 34),
              Color(0xFF2196F3),
              Color.fromARGB(255, 155, 72, 155),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Center(
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                ksizedheight20,

                Textwigets(text: "First Name"),
                ksizedheight,
                CustomeTextField(
                  label: "First Name",
                  inputType: TextInputType.name,
                  hinttext: "Please Enter Your First Name",
                ),
                ksizedheight,

                Textwigets(text: "Last Name"),
                ksizedheight,
                CustomeTextField(
                  label: "Last Name",
                  inputType: TextInputType.name,
                  hinttext: "Please Enter Your Last Name",
                ),
                ksizedheight,

                Textwigets(text: "Phone Number"),
                ksizedheight,
                CustomeTextField(
                  label: "Phone Number",
                  inputType: TextInputType.phone,
                  hinttext: "Please Enter Your Phone Number",
                  prefixtext: "+91 ",
                ),
                ksizedheight,

                Textwigets(text: "Email"),
                ksizedheight,
                CustomeTextField(
                  label: "Email",
                  inputType: TextInputType.emailAddress,
                  hinttext: "Please Enter Your Email",
                ),
                ksizedheight,

                Textwigets(text: "Gender"),
                ksizedheight,
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: DropdownButtonFormField<String>(
                    value: gender,
                    dropdownColor: Colors.black87,
                    decoration: const InputDecoration(border: InputBorder.none),
                    items: ["Male", "Female", "Other"]
                        .map(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: Text(
                              e,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (value) => setState(() => gender = value),
                  ),
                ),
                ksizedheight,

                Textwigets(text: "Date of Birth"),
                ksizedheight,
                GestureDetector(
                  onTap: () async {
                    DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime(2000),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    );
                    if (picked != null) {
                      setState(() {
                        dob = picked;
                      });
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      dob == null
                          ? "Select your Date of Birth"
                          : "${dob!.day}/${dob!.month}/${dob!.year}",
                      style: const TextStyle(color: Colors.white70),
                    ),
                  ),
                ),
                ksizedheight,

                Textwigets(text: "Nationality"),
                ksizedheight,
                CustomeTextField(
                  label: "Nationality",
                  inputType: TextInputType.text,
                  hinttext: "Please Enter Your Nationality",
                ),
                ksizedheight,

                Textwigets(text: "Passport Number"),
                ksizedheight,
                CustomeTextField(
                  label: "Passport Number",
                  inputType: TextInputType.text,
                  hinttext: "Please Enter Your Passport Number",
                ),
                ksizedheight20,

                CustomElevatedButton(text: "Setup Profile", onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
