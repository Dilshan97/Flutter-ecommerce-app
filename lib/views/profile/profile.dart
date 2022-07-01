import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(fontFamily: "Poppins-Light"),
        ),
        backgroundColor: Color(0xFF33bf2e),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.90,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/avatar.png",
                      width: MediaQuery.of(context).size.width * 0.22,
                      height: MediaQuery.of(context).size.height * 0.22,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 12),
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Dilshan Ramesh",
                            style: TextStyle(
                                fontFamily: "Poppins-Light",
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 16),
                          ),
                          Text(
                            "dilshanramesh@gmail.com",
                            style: TextStyle(fontFamily: "Poppins-Light"),
                          ),
                          Text("+94 77 185 47 09",
                            style: TextStyle(
                              fontFamily: "Poppins-Light"
                            ),
                          ),
                          Text(
                            "View My Profile",
                            style: TextStyle(
                                fontFamily: "Poppins-Light",
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF33bf2e),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.70,
                    margin: EdgeInsets.only(bottom: 12),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.lock,
                              size: 30,
                              color: Color(0xFF33bf2e),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Change Password",
                                    style: TextStyle(
                                        fontFamily: "Poppins-Regular",
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "Change your password",
                                    style: TextStyle(
                                        fontFamily: "Poppins-Regular",
                                        color: Colors.black45),
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 20,
                            )
                          ],
                        ),
                        Divider(
                          color: Colors.black12,
                          thickness: 0.5,
                          indent: 20,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.70,
                    margin: EdgeInsets.only(bottom: 12),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.pin_drop,
                              size: 30,
                              color: Color(0xFF33bf2e),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Locations",
                                    style: TextStyle(
                                        fontFamily: "Poppins-Regular",
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "Add your locations",
                                    style: TextStyle(
                                        fontFamily: "Poppins-Regular",
                                        color: Colors.black45),
                                  ),
                                  Divider(
                                    color: Colors.black45,
                                    thickness: 3,
                                    height: 5,
                                    indent: 25,
                                    endIndent: 25,
                                  )
                                ],
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 20,
                            )
                          ],
                        ),
                        Divider(
                          color: Colors.black12,
                          thickness: 0.5,
                          indent: 20,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.70,
                    margin: EdgeInsets.only(bottom: 12),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.facebook,
                              size: 30,
                              color: Color(0xFF33bf2e),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Add Social Account",
                                    style: TextStyle(
                                        fontFamily: "Poppins-Regular",
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "Add Facebook, Twitter etc",
                                    style: TextStyle(
                                        fontFamily: "Poppins-Regular",
                                        color: Colors.black45),
                                  ),
                                  Divider(
                                    color: Colors.black45,
                                    thickness: 3,
                                    height: 5,
                                    indent: 25,
                                    endIndent: 25,
                                  )
                                ],
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 20,
                            )
                          ],
                        ),
                        Divider(
                          color: Colors.black12,
                          thickness: 0.5,
                          indent: 20,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.70,
                    margin: EdgeInsets.only(bottom: 12),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.share_outlined,
                              size: 30,
                              color: Color(0xFF33bf2e),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Refer to Friends",
                                    style: TextStyle(
                                        fontFamily: "Poppins-Regular",
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "Get \$10 for reffering friends",
                                    style: TextStyle(
                                        fontFamily: "Poppins-Regular",
                                        color: Colors.black45),
                                  ),
                                  Divider(
                                    color: Colors.black45,
                                    thickness: 3,
                                    height: 5,
                                    indent: 25,
                                    endIndent: 25,
                                  )
                                ],
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 20,
                            )
                          ],
                        ),
                        Divider(
                          color: Colors.black12,
                          thickness: 0.5,
                          indent: 20,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.70,
                    margin: EdgeInsets.only(bottom: 12),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.star,
                              size: 30,
                              color: Color(0xFF33bf2e),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Rate Us",
                                    style: TextStyle(
                                        fontFamily: "Poppins-Regular",
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "Rate us playstore, appstore",
                                    style: TextStyle(
                                        fontFamily: "Poppins-Regular",
                                        color: Colors.black45),
                                  ),
                                  Divider(
                                    color: Colors.black45,
                                    thickness: 3,
                                    height: 5,
                                    indent: 25,
                                    endIndent: 25,
                                  )
                                ],
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 20,
                            )
                          ],
                        ),
                        Divider(
                          color: Colors.black12,
                          thickness: 0.5,
                          indent: 20,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.70,
                    margin: EdgeInsets.only(bottom: 12),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.book,
                              size: 30,
                              color: Color(0xFF33bf2e),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "FAQ",
                                    style: TextStyle(
                                        fontFamily: "Poppins-Regular",
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "Asked any questions",
                                    style: TextStyle(
                                        fontFamily: "Poppins-Regular",
                                        color: Colors.black45),
                                  ),
                                  Divider(
                                    color: Colors.black45,
                                    thickness: 3,
                                    height: 5,
                                    indent: 25,
                                    endIndent: 25,
                                  )
                                ],
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 20,
                            )
                          ],
                        ),
                        Divider(
                          color: Colors.black12,
                          thickness: 0.5,
                          indent: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
