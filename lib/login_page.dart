import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Stack(
        children: [
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) / 3,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color(0xffb226b2), Color(0xffff6da7)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
            ),
          ),
          Positioned(
            left: -getBigDiameter(context) / 4,
            top: -getBigDiameter(context) / 4,
            child: Container(
              child: Center(
                child: Text(
                  "dribblee",
                  style: TextStyle(
                      fontFamily: "Pacifico",
                      fontSize: 30,
                      color: Colors.white),
                ),
              ),
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color(0xffb226b2), Color(0xffff4891)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
            ),
          ),
          Positioned(
            right: -getSmallDiameter(context) / 2,
            bottom: -getSmallDiameter(context) / 2,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFFF3e9ee)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Color(0xffff4891),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffff4891),
                              ),
                            ),
                            labelText: "Email: ",
                            labelStyle: TextStyle(color: Color(0xffff4891))),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.vpn_key,
                              color: Color(0xffff4891),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffff4891),
                              ),
                            ),
                            labelText: "Password: ",
                            labelStyle: TextStyle(color: Color(0xffff4891))),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                    child: Text(
                      "Forgot Password ?",
                      style: TextStyle(color: Color(0xffff4891), fontSize: 12),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 40,
                        child: Container(
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              splashColor: Colors.amber,
                              onTap: () {},
                              child: Center(
                                child: Text(
                                  "SIGN IN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xffb226b2), Color(0xffff4891)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        child: Image(
                          image: AssetImage("assets/facebook.png"),
                        ),
                        elevation: 0,
                        mini: true,
                        onPressed: () {},
                      ),
                      FloatingActionButton(
                        child: Image(
                          image: AssetImage("assets/twitter.png"),
                        ),
                        elevation: 0,
                        mini: true,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ? ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Color(0xffff4891),
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
