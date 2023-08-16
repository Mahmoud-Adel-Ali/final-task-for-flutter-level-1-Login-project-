// ignore_for_file: prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Wellcom extends StatelessWidget {
  const Wellcom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Image.asset(
              "assets/images/main_top.png",
              width: 120,
            ),
            Text(
              "Wellcom to IDU",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "myfont",
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SvgPicture.asset(
          "assets/images/chat.svg",
          height: 380,
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 200,
          height: 35,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.purple),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
            ),
            child: Text("Login"),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 200,
          height: 35,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/signup');
            },
            style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 247, 201, 255)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
            ),
            child: Text(
              "Signup",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        Row(
          children: [
            Image.asset(
              'assets/images/main_bottom.png',
              fit: BoxFit.cover,
              height: 170,
            ),
          ],
        ),
      ],
    ));
  }
}
