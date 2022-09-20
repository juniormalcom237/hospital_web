import 'package:flutter/material.dart';

import '../widgets/text_field_custom.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);
  static const url = "/login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.65,
                height: MediaQuery.of(context).size.height * 1,
                child: Container(
                  margin: EdgeInsets.all(5),
                  child: Image.asset(
                    "bg3.webp",
                    fit: BoxFit.cover,
                  ),
                )),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.35,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.22,
                      margin: EdgeInsets.only(left: 30, right: 20),
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Start For Free",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                letterSpacing: 1.6),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Sign Up for Consultation",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 35,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Text(
                                "Already Has an Account ?",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w800),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Email"),
                          SizedBox(
                            height: 10,
                          ),
                          CustomTextField(label: "Emaila"),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Passwprd"),
                          SizedBox(
                            height: 10,
                          ),
                          CustomTextField(label: "Password"),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: RaisedButton(
                              color: Colors.deepPurpleAccent,
                              onPressed: () {},
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                alignment: Alignment.center,
                                height: 60,
                                child: Text(
                                  "Continue",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
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
