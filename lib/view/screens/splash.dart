import 'package:project_3/view/custom_widget/text.dart';

import 'login.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    timerFun();
    super.initState();
  }
  Future<void> timerFun()async{
    await Future.delayed(Duration(seconds: 3)).then((v){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ4cVyrnVxeEfSyBVwQiSvwkiVyvdnsD7J3AUFG58dEQ&s=10",height: 200,
            fit: BoxFit.contain,
          )),
          SizedBox(height: 17,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             spacing: 15,
             children: [
               CustomText(text: "Dokani",fSize: 30,fWeight: FontWeight.bold,color: Colors.black87,),
               CustomText(text: "Bahe",fSize: 30,fWeight: FontWeight.bold,color: Colors.deepOrange,),
             ],
           ),
        ],
      ),
    );
  }
}