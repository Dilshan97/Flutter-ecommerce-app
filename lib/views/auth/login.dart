import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keels/views/auth/signup.dart';
import 'package:page_transition/page_transition.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool isRemember = false;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Form(
            key: _formKey,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200,
                ),
                const Text(
                  "Welcome to Keells",
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Poppins-Light",
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                const Text(
                  "Let's get started",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Poppins-Light",
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.02),
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Text("Email address",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                    fontFamily: "Poppins-Regular",
                                    height: 1.4)),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.01),
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: TextFormField(
                              controller: _emailController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter you email address',
                                hintStyle: TextStyle(
                                  fontFamily: "Poppins-Regular",
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Email address is required";
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.02),
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Text("Password",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                    fontFamily: "Poppins-Regular",
                                    height: 1.4)),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.01),
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: TextFormField(
                              controller: _passwordController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter you password',
                                hintStyle: TextStyle(
                                  fontFamily: "Poppins-Regular",
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Password is required";
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: isRemember,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isRemember = value!;
                                  });
                                },
                              ),
                              const Text(
                                "Remember me",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: "Poppins-Regular",
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.023,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green,
                          ),
                          child: RaisedButton(
                              textColor: Colors.white,
                              color: Colors.green,
                              padding: const EdgeInsets.all(15),
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Poppins-Light",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  log("message");
                                }
                              }),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Do not have an account? ",
                              style: TextStyle(
                                  fontFamily: "Poppins-Regular", fontSize: 14),
                            ),
                            InkWell(
                              child: const Text(
                                "Register here",
                                style: TextStyle(
                                    fontFamily: "Poppins-Regular",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                              ),
                              onTap: () {
                                log("message");
                                Navigator.of(context).pushAndRemoveUntil(
                                    PageTransition(
                                        type: PageTransitionType.fade,
                                        child: SignUp()),
                                    (route) => false);
                              },
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
