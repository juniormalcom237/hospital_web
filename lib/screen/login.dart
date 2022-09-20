import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hospital_web/screen/registration.dart';
import 'package:hospital_web/widgets/NavItem.dart';
import 'package:hospital_web/widgets/text_field_custom.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.55,
                height: MediaQuery.of(context).size.height * 1,
                child: Container(
                  margin: EdgeInsets.all(5),
                  child: Image.asset(
                    "bgLogin.webp",
                    fit: BoxFit.cover,
                  ),
                )),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.45,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 40),
                      alignment: Alignment.topRight,
                      child: Text(
                        "English (USA)",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.22,
                      margin: EdgeInsets.only(left: 30, right: 20),
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
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
                            height: 10,
                          ),
                          Text(
                            "Sign Up for Consultation",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 20,
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
                              FlatButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushReplacementNamed(Registration.url);
                                },
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w800),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextField(label: "Name"),
                          CustomTextField(label: "Surname"),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.40,
                            margin: EdgeInsets.only(bottom: 30),
                            child: InternationalPhoneNumberInput(
                              onInputChanged: (v) {},
                              selectorConfig: SelectorConfig(
                                useEmoji: true,
                              ),
                              inputBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.blue),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          CustomTextField(label: "Emaila"),
                          CustomTextField(label: "Password"),
                          CustomTextField(label: "Departement"),
                          Container(
                            margin: EdgeInsets.only(right: 20, top: 5),
                            child: RaisedButton(
                              color: Colors.deepPurpleAccent,
                              onPressed: () {},
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.39,
                                alignment: Alignment.center,
                                height: 60,
                                child: Text(
                                  "Register",
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
