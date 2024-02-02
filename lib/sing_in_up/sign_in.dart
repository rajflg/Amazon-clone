import 'package:final_amazon_clone/sing_in_up/sign_up.dart';
import 'package:flutter/material.dart';

import '../resorces/authenticationmethods.dart';
import '../resorces/until.dart';
import '../widget/costom_main_button.dart';
import '../widget/textfield.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({super.key});

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size sizeee = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: sizeee.height,
          width: sizeee.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('asset/images/img.png', height: sizeee.height*0.10,),
                Container(
                  height: sizeee.height*0.50,
                  width: sizeee.width,
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                  ),
                  child: Align(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sign-In', style: TextStyle(fontSize: 31, fontWeight: FontWeight.w400),),
                          Textfield(
                            title: "Email",
                            controller: emailcontroller,
                                obscureText: false, hintText: 'Enter your mail',),
                          Textfield(
                            title: "password",
                            controller: passwordcontroller,
                            obscureText: true, hintText: 'Enter your password',),
                          SizedBox(height: 30,),
                          CostomButton(child: Text('Sign-In', style: TextStyle(letterSpacing: 0.6, color: Colors.black, fontWeight: FontWeight.w500,fontSize: 18),), color: Colors.yellow, isLoding: false,
                              onpressed: () async {
                            String output = await AthenticationMethod().SingInUser(
                                email: emailcontroller.text,
                                password: passwordcontroller.text);
                            if(output == "success"){}
                            else{
                              Utils().showSnakeBar(context: context, content: output);
                            }
                              }),
                        ]
                    ),
                  ),
                ),Row(children: [
                  Expanded(
                      child: Container(
                        height: 1,color: Colors.grey.shade900,)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text("New to Amazon?",style: TextStyle(color: Colors.grey.shade900,fontWeight: FontWeight.w500),),
                  ),
                  Expanded(
                      child: Container(
                        height: 1,color: Colors.grey.shade900,)),
                ],),
                CostomButton(child: Text('Create new account', style: TextStyle(letterSpacing: 0.6,color: Colors.black, fontWeight: FontWeight.w400 ,fontSize: 18),), color: Colors.grey[200]!, isLoding: false, onpressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Sign_up()));
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
