import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keels/providers/auth_provider.dart';
import 'package:keels/views/home/home.dart';
import 'package:page_transition/page_transition.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nexusController = TextEditingController();

  register() async {
    log("Register");

    String payload = jsonEncode(<String, dynamic>{
      "name": _nexusController.text,
      "email": _emailController.text,
      "password": _passwordController.text,
      "nexus_card_no": _nexusController.text
    });

    Map? result = await AuthProvider(context).register(payload);

    log(json.encode(result));

    if (result != null) {
      Navigator.of(context).pop();
      Navigator.of(context).pushAndRemoveUntil(
          PageTransition(type: PageTransitionType.fade, child: Home()),
          (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05),
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Welcome!",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 21,
                          color: Color(0xFF33bf2e),
                          fontFamily: "Poppins-Light",
                        ),
                      ),
                      Text(
                        "Welcome to our self-service application.",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Colors.black45,
                          fontFamily: "Poppins-Light",
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.05),
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: Text("Name",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
                              fontFamily: "Poppins-Regular",
                              height: 1.4)),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.01),
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        autofocus: true,
                        enabled: true,
                        controller: _nameController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter you name',
                          hintStyle: TextStyle(
                            fontFamily: "Poppins-Regular",
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Name is required";
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
                      child: Text("Email address",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
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
                                  MediaQuery.of(context).size.height * 0.02,
                              fontFamily: "Poppins-Regular",
                              height: 1.4)),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.01),
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
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
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.02),
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: Text("Nexus card (Optional)",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
                              fontFamily: "Poppins-Regular",
                              height: 1.4)),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.01),
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: TextFormField(
                        controller: _nexusController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter you nexus card number',
                            hintStyle: TextStyle(
                              fontFamily: "Poppins-Regular",
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF33bf2e),
                    ),
                    child: RaisedButton(
                        textColor: Colors.white,
                        color: Color(0xFF33bf2e),
                        padding: const EdgeInsets.all(15),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins-Light",
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            register();
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
                        "Already have an account? ",
                        style: TextStyle(
                            fontFamily: "Poppins-Regular", fontSize: 14),
                      ),
                      InkWell(
                        child: const Text(
                          "Log in",
                          style: TextStyle(
                              fontFamily: "Poppins-Regular",
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                        onTap: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  child: Login()),
                              (route) => false);
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
