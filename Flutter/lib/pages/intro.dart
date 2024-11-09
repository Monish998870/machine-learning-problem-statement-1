
import 'package:flutter/material.dart';
import 'package:skinscan_ai/pages/signup.dart';


class Intro extends StatefulWidget{
  @override
  IntroPage  createState(){
    return IntroPage();
  }

}

class IntroPage extends State<Intro> {

  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Welcome to SkinScan AI', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.blue[200],
          elevation: 5,
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.fromLTRB(25, 0, 25, 25),
            child: Center(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      height: 200,
                      width: 200,
                    ),
                    Text('Thank you for choosing SkinScan AI',
                      textAlign: TextAlign.center,
                      style: TextStyle(

                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade800,),),
                    //Text("Email                                                                ",style: TextStyle(fontSize: 22),textAlign: TextAlign.left,),
                    // SizedBox(height: 5,),
    SizedBox(height: 20,),
                    Text(
                      "Skin Scan AI is a powerful tool that leverages cutting-edge machine learning to help you detect skin cancer early.With just your smartphone,you can now access reliable, AI-powered skin cancer screening, making it easier for everyone especially in remote areas to stay on top of their health.",
                      style: TextStyle(fontSize: 20),),
    SizedBox(height: 20,),
                    Container(
                      height: 60,
                      child: ElevatedButton(

                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size.fromHeight(60),
                              backgroundColor: Colors.blue[200],
                              shape: RoundedRectangleBorder( //to set border radius to button
                                  borderRadius: BorderRadius.circular(50)
                              )),
                          onPressed: () { Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>SignUp()));},
                          child: Text(
                            "Create Account", style: TextStyle(color: Colors
                              .black, fontSize: 25),)),
                    ),


                  ],
                ),
              ),
            ),
          ),
        ));
  }
}