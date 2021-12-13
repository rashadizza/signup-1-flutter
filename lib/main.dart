// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle titleTextStyle = GoogleFonts.poppins(
  color: Color(0xff07080B),
  fontWeight: FontWeight.w500,
  fontSize: 20,
);

TextStyle subtitleTextStyle = GoogleFonts.poppins(
  color: Color(0xff373C44),
  fontWeight: FontWeight.w400,
  fontSize: 14,
);

TextStyle formtitleTextStyle = GoogleFonts.poppins(
  color: Color(0xff07080B),
  fontWeight: FontWeight.w400,
  fontSize: 14,
);

TextStyle formhintTextStyle = GoogleFonts.poppins(
  color: Color(0xff848A95),
  fontWeight: FontWeight.w400,
  fontSize: 14,
);

TextStyle buttonTextStyle = GoogleFonts.poppins(
  color: Color(0xffFDFDFD),
  fontWeight: FontWeight.w500,
  fontSize: 14,
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 16, top: 43.6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 2),
              child: Image.asset(
                'assets/images/icon.png',
                width: 19.2,
                height: 16.8,
              ),
            ),
            SizedBox(
              height: 19.6,
            ),
            Text(
              'Create New Account',
              style: titleTextStyle,
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Join us and transfer from your phone just \none click!',
              style: subtitleTextStyle,
            ),
          ],
        ),
      );
    }

    Widget form(String title, String hint) {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: formtitleTextStyle,
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              height: 36,
              child: TextFormField(
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: formhintTextStyle,
                  filled: true,
                  fillColor: Color(0xffFDFDFD),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    borderSide: BorderSide(
                      width: 1.0,
                      color: Color(0xffE4E5E7),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    borderSide: BorderSide(
                      width: 1.0,
                      color: Color(0xff848A95),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget continueButton() {
      return Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 16),
            height: 40,
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Color(0xff1C5D99),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6))),
              onPressed: () {},
              child: Text(
                'Continue',
                style: buttonTextStyle,
              ),
            ),
          )
        ],
      );
    }

    // Widget buildName() {
    //   return TextField(
    //     controller: nameController,
    //     decoration:
    //         InputDecoration(hintText: hint, border: OutlineInputBorder()),
    //   );
    // }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: SingleChildScrollView(
          child: Column(
            children: [
              header(),
              SizedBox(height: 40),
              form('Name', 'Name'),
              SizedBox(height: 16),
              form('Email', 'Email'),
              SizedBox(height: 16),
              form('Phone Number', 'Phone Number'),
              SizedBox(height: 40),
              continueButton(),
            ],
          ),
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////
/// yang bawah ini saya cuma coba-coba, dan ternyata lebih efisien yang atas

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     // Widget buildName() {
//     //   return TextField(
//     //     controller: nameController,
//     //     decoration:
//     //         InputDecoration(hintText: hint, border: OutlineInputBorder()),
//     //   );
//     // }

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Column(
//           children: [
//             Container(
//               width: double.infinity,
//               margin: EdgeInsets.only(
//                 left: 16,
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     margin: EdgeInsets.only(top: 43.6, left: 2),
//                     child: Image.asset(
//                       'assets/images/icon.png',
//                       width: 19.2,
//                       height: 16.8,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 19.6,
//                   ),
//                   Text(
//                     'Create New Account',
//                     style: titleTextStyle,
//                   ),
//                   SizedBox(
//                     height: 4,
//                   ),
//                   Text(
//                     'Join us and transfer from your phone just \none click!',
//                     style: subtitleTextStyle,
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 40),
//             Container(
//               width: double.infinity,
//               margin: EdgeInsets.symmetric(horizontal: 16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Name',
//                     style: formtitleTextStyle,
//                   ),
//                   SizedBox(
//                     height: 4,
//                   ),
//                   Container(
//                     height: 36,
//                     width: double.infinity,
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Name',
//                         hintStyle: formhintTextStyle,
//                         filled: true,
//                         fillColor: Color(0xffFDFDFD),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(4)),
//                           borderSide: BorderSide(
//                             width: 1.0,
//                             color: Color(0xffE4E5E7),
//                           ),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(4)),
//                           borderSide: BorderSide(
//                             width: 1.0,
//                             color: Color(0xff848A95),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 16),
//                   Text(
//                     'Email',
//                     style: formtitleTextStyle,
//                   ),
//                   SizedBox(
//                     height: 4,
//                   ),
//                   Container(
//                     height: 36,
//                     width: double.infinity,
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Email',
//                         hintStyle: formhintTextStyle,
//                         filled: true,
//                         fillColor: Color(0xffFDFDFD),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(4)),
//                           borderSide: BorderSide(
//                             width: 1.0,
//                             color: Color(0xffE4E5E7),
//                           ),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(4)),
//                           borderSide: BorderSide(
//                             width: 1.0,
//                             color: Color(0xff848A95),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 16),
//                   Text(
//                     'Phone Number',
//                     style: formtitleTextStyle,
//                   ),
//                   SizedBox(
//                     height: 4,
//                   ),
//                   Container(
//                     height: 36,
//                     width: double.infinity,
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Phone Number',
//                         hintStyle: formhintTextStyle,
//                         filled: true,
//                         fillColor: Color(0xffFDFDFD),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(4)),
//                           borderSide: BorderSide(
//                             width: 1.0,
//                             color: Color(0xffE4E5E7),
//                           ),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(4)),
//                           borderSide: BorderSide(
//                             width: 1.0,
//                             color: Color(0xff848A95),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 40),
//                   Container(
//                     width: double.infinity,
//                     margin: EdgeInsets.symmetric(horizontal: 16),
//                     height: 40,
//                     child: TextButton(
//                       style: TextButton.styleFrom(
//                           backgroundColor: Color(0xff1C5D99),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(6))),
//                       onPressed: () {},
//                       child: Text(
//                         'Continue',
//                         style: buttonTextStyle,
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
