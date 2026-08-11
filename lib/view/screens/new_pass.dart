import 'package:flutter/material.dart';
import 'package:project_3/view/screens/home/home.dart';

import '../custom_widget/text.dart';
import '../custom_widget/text_field.dart';

class SetNewPasswordScreen extends StatefulWidget {
  const SetNewPasswordScreen({super.key});

  @override
  State<SetNewPasswordScreen> createState() => _SetNewPasswordScreenState();
}

class _SetNewPasswordScreenState extends State<SetNewPasswordScreen> {
  // bool _isnewPassObscured = true;
  // bool _isconfirmPassObscured = true;

  TextEditingController newPass = TextEditingController();
  TextEditingController confirmPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,

        //BackButton
        leading: IconButton(
          icon:  Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding:  EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),

              // Lock Icon
              Container(
                width: 100,
                height: 100,
                decoration:  BoxDecoration(
                  color: Color(0xFFE8F5E9),
                  shape: BoxShape.circle,
                ),
                child:  Icon(
                  Icons.lock_reset,
                  size: 80,
                  color: Color(0xFF2E7D32),
                ),
              ),
              SizedBox(height: 24),

              // Title
              CustomText(
                text: "Set New Password",
                fSize: 25,
                fWeight: FontWeight.bold,
                color: Colors.black,
              ),
              SizedBox(height: 8),

              // Subtitle
              CustomText(
                text: "Create a new password for your account.",
                fSize: 15,
                color: Colors.black,
              ),
              SizedBox(height: 24),

              // New Password
              CustomTextField(
                email: newPass,
                hint: "New Password",
                prefixIcon: Icon(Icons.lock_outlined),
                suffixIcon: Icon(Icons.visibility_off_outlined),
              ),

              // Confirm New Password
              CustomTextField(
                email: confirmPass,
                hint: "Confirm New Password",
                prefixIcon: Icon(Icons.lock_outlined),
                suffixIcon: Icon(Icons.visibility_off_outlined),
              ),

              // Password Requirements Box
              Container(
                padding:  EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color:  Color(0xFFE8F5E9).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    //BuildRequirementRow = BRR
                    BRR('At least 8 characters'),
                    SizedBox(height: 10),
                    BRR('One uppercase letter'),
                    SizedBox(height: 10),
                    BRR('One number'),
                    SizedBox(height: 10),
                    BRR('One special character'),
                  ],
                ),
              ),
              SizedBox(height: 20),

              //Reset
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Home(index: 0)));
                  //log("===");
                },
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  color: Colors.deepOrange,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(
                          text: "Reset Password",
                          fSize: 20,
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
      ),
    );
  }

  //BuildRequirementRow Fun
  Widget BRR(String text) {  //BuildRequirementRow = BRR
    return Row(
      children: [
        Icon(Icons.check_circle_outline, color: Color(0xFF2E7D32), size: 20),
        SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}