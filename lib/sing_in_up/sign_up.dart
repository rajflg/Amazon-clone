import 'package:final_amazon_clone/sing_in_up/sign_in.dart';
import 'package:flutter/material.dart';

import '../resorces/authenticationmethods.dart';
import '../resorces/until.dart';
import '../widget/costom_main_button.dart';
import '../widget/textfield.dart';

class Sign_up extends StatefulWidget {
  const Sign_up({super.key});

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  @override
  Widget build(BuildContext context) {
    TextEditingController Namecontroller = TextEditingController();
    TextEditingController addresscontroller = TextEditingController();
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    AthenticationMethod athenticationMethod = AthenticationMethod();
    bool isLoding =false;

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
                Image.asset(
                  'asset/images/img.png',
                  height: sizeee.height * 0.10,
                ),
                Container(
                  height: sizeee.height * 0.73,
                  width: sizeee.width,
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                  ),
                  child: Align(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sign-Up',
                            style: TextStyle(
                                fontSize: 31, fontWeight: FontWeight.w400),
                          ),
                          Textfield(
                            title: "Name",
                            controller: Namecontroller,
                            obscureText: false,
                            hintText: 'Enter your Name',
                          ),
                          Textfield(
                            title: "Address",
                            controller: addresscontroller,
                            obscureText: false,
                            hintText: 'Enter your Address',
                          ),
                          Textfield(
                            title: "Email",
                            controller: emailcontroller,
                            obscureText: false,
                            hintText: 'Enter your E-mail',
                          ),
                          Textfield(
                            title: "password",
                            controller: passwordcontroller,
                            obscureText: true,
                            hintText: 'Enter your password',
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          CostomButton(
                            child: Text(
                              'Sign-In',
                              style: TextStyle(
                                  letterSpacing: 0.6,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                            color: Colors.yellow,
                            isLoding: isLoding,
                            onpressed: () async {
                              setState(() {
                                isLoding  = true;
                              });
                              String output =
                                  await athenticationMethod.SingUpUser(
                                      name: Namecontroller.text,
                                      address: addresscontroller.text,
                                      email: emailcontroller.text,
                                      password: passwordcontroller.text);
                              setState(() {
                                isLoding= false;
                              });
                              if (output == "success") {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Sign_in()));
                                //log('doing next step');
                              } else {
                                //else
                                Utils().showSnakeBar(
                                    context: context, content: output);
                              }
                            },
                          ),
                        ]),
                  ),
                ),
                CostomButton(
                    child: Text(
                      'Back',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.6,
                          color: Colors.white),
                    ),
                    color: Colors.grey,
                    isLoding: false,
                    onpressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Sign_in()));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
