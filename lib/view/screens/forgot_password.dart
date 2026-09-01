import '../custom_widget/text.dart';
import '../custom_widget/text_field.dart';
import 'otp.dart';
import 'package:flutter/material.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  TextEditingController email = TextEditingController();
  bool phone = true;
  int? mLine;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration:  BoxDecoration(
                color: Color(0xFFE8F5E9),
                shape: BoxShape.circle,
              ),
              child:  Icon(
                Icons.lock_clock_outlined,
                size: 80,
                color: Color(0xFF2E7D32),
              ),
            ),
            SizedBox(height: 24),

            CustomText(
              text: "Forgot password?",
              fSize: 30,
              fWeight: FontWeight.bold,
            ),
            SizedBox(height: 15),

            CustomText(
              maxLine: 2,
              text:
              "Enter the email or phone number associated with your account.",
              fSize: 17,
            ),
            SizedBox(height: 10),

            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => setState(() => phone = true),
                        child: Container(
                          decoration: BoxDecoration(
                            color: phone ? Colors.white : Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            border: phone ? Border.all(color: Color(0xFFFF5722), width: 1.5) : null,
                          ),
                          alignment: Alignment.center,
                          child: CustomText(
                            text: "Phone",
                            fWeight: FontWeight.bold,
                            color: phone ? Colors.deepOrange : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => setState(() => phone = false),
                        child: Container(
                          decoration: BoxDecoration(
                            color: !phone ? Colors.white : Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            border: !phone
                                ? Border.all(color: Colors.deepOrange, width: 1.5)
                                : null,
                          ),
                          alignment: Alignment.center,
                          child: CustomText(
                            text: "Email",
                            fWeight: FontWeight.bold,
                            color: !phone ? Colors.deepOrange : Colors.black,
                            fSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: CustomTextField(
                  email: email,
                  hint: phone ? "Phone Number" : "Email Address",
                  prefixIcon: Icon(phone ? Icons.phone : Icons.email),
                ),
              ),
            ),

            //Send OTP
            InkWell(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> OtpScreen()));},
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CustomText(
                        text: "Send OTP",
                        fSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}