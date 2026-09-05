import 'package:flutter/material.dart';
import '../custom_widget/text.dart';
import '../custom_widget/text_field.dart';
import 'login.dart';

class RegScreen extends StatefulWidget {
  const RegScreen({super.key});

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: "Create Account",
              fSize: 40,
              fWeight: FontWeight.bold,
            ),
            SizedBox(height: 10),
            CustomText(text: "Sing up to get started", fSize: 15),
            SizedBox(height: 10),
            CustomTextField(
              email: name,
              hint: "Full Name",
              prefixIcon: Icon(Icons.person),
            ),
            CustomTextField(
              email: email,
              hint: "Email",
              prefixIcon: Icon(Icons.mail),
            ),
            CustomTextField(
              email: phone,
              hint: "Phone Number",
              prefixIcon: Icon(Icons.phone),
            ),
            CustomTextField(
              email: password,
              hint: "Password",
              prefixIcon: Icon(Icons.lock_outlined),
              suffixIcon: Icon(Icons.visibility_off_outlined),
            ),
            CustomTextField(
              email: password,
              hint: "Confirm Password",
              prefixIcon: Icon(Icons.lock_outlined),
              suffixIcon: Icon(Icons.visibility_off_outlined),
            ),

            InkWell(
              onTap: () {
                //log("===");
                //log("===");
              },
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                color: Colors.deepOrangeAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomText(text: "Register", fSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                CustomText(text: "Already Registered?", fSize: 14),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                    //log("===");
                  },
                  child: CustomText(
                    text: "Sign in",
                    fSize: 15,
                    color: Colors.deepOrange,
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
