import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FirstApp());
}

class FirstApp extends StatelessWidget {
  const FirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First App'),
        ),
        body:

        // Container(
        //   color: Colors.blue,
        //   child: Center(
        //     child: Text(
        //       'Hello, World!',
        //       style: TextStyle(fontSize: 24, color: Colors.white),
        //     ),
        //   ),
        // ),
        Container(
          decoration: BoxDecoration(
            color: Color(0xFF226454),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF226454),
            ),
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 81, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(1, 0, 0, 182),
                    child: Text(
                      'WELCOME TO LONDON',
                      textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(32, 0, 31, 89),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 19, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFACE1D4),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 14, 0.9, 14),
                                child:
                                Text(
                                  'Daftar',
                                    style: TextStyle(fontSize: 24, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFACE1D4),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(7.2, 14, 0, 14),
                              child:
                              Text(
                                'Masuk',
                                // style: GoogleFonts.getFont(
                                //   'Ubuntu',
                                //   fontWeight: FontWeight.w500,
                                //   fontSize: 18,
                                //   color: Color(0xFF000000),
                                // ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF1F7127),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 17, 6, 16),
                      child:
                      RichText(
                        text: TextSpan(
                          text: 'design By ',
                          //style: style: TextStyle(fontSize: 24, color: Colors.white),
                          children: [
                            TextSpan(
                              text: 'London',
                              //style: style: TextStyle(fontSize: 24, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),


      ),
    );
  }
}