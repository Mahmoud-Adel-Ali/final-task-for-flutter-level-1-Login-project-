// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigator.pushNamed(context, '/');
            Navigator.pop(context);
          },
          child: Icon(Icons.home),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/signup_top.png",
                      width: 130,
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "myfont",
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SvgPicture.asset(
                  "assets/images/signup.svg",
                  height: 260,
                ),
                SizedBox(
                  height: 10,
                ),
              Container(
                  width: 230,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 240, 181, 250),
                  ),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: "Your Name",
                      prefixIcon: Icon(Icons.person_3_outlined),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 230,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 240, 181, 250),
                  ),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: "Your Email",
                      prefixIcon: Icon(Icons.person),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 230,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 240, 181, 250),
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password : ",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.purple),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                    ),
                    child: Text("Signup"),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "If You Have valid Account push:",
                      style: TextStyle(fontFamily: "myfont", fontSize: 17),
                    ),
                    GestureDetector(
                      child: Text("Login",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, "/login");
                      },
                    ),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      width: 100,
                      height: 3,
                      color: Colors.purple,
                    ),
                    Text("OR"),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      width: 100,
                      height: 3,
                      color: Colors.purple,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                //SVG image(Icon image)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // height: 150,
                      // padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Color.fromARGB(255, 151, 0, 177),
                              width: 2,)),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset(
                          "assets/images/facebook.svg",
                          // ignore: deprecated_member_use
                          color: Color.fromARGB(255, 0, 80, 120),
                          // height: 50,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Color.fromARGB(255, 168, 0, 198),
                              width: 2)),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset(
                          "assets/images/twitter.svg",
                          // ignore: deprecated_member_use
                          color: Color.fromARGB(255, 34, 134, 184),
                          height: 25,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Color.fromARGB(255, 135, 0, 159),
                              width: 2)),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset(
                          "assets/images/google-plus.svg",
                          // ignore: deprecated_member_use
                          color: Color.fromARGB(255, 242, 5, 5),
                          height: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/main_bottom.png',
                      fit: BoxFit.cover,
                      height: 120,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
