import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Future<String> fetchData() async {
    final response = await http.get(Uri.parse('http://10.0.2.2:3000/users'));
    // for ios http.get('192.168.8.155:3000/users')

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON.
      return jsonDecode(response.body)['username']; // Replace 'key' with the key you want to access
    } else {
      // If the server did not return a 200 OK response, throw an exception.
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('HTTP Request Example'),
        ),
        body: FutureBuilder<String>(
          future: fetchData(),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),

      //home: Text('test')

      //home: Image(image: AssetImage('assets/edu.jpg')));
    //   home: Icon(
    //     Icons.star,
    //       color: Colors.red
    // )

  );


  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('여기가 앱바'),
//         ),
//         body: MyContainer(),
//       ),
//     );
//   }
// }

// class MyContainer extends StatelessWidget {
//   const MyContainer({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // 너비를 무한으로 늘리고 싶다면 활용 가능 - double.infinity
//       width: double.infinity,
//       height: double.infinity,
//       // BoxDecoration에서 에러 발생
//       // color: Colors.lightBlue,
//       child: Container(
//         width: 200,
//         height: 200,
//         color: Colors.cyan,
//         child: Center(
//           child: Text(
//             'Container',
//             textDirection: TextDirection.ltr,
//           ),
//         ),
//       ),
//       padding: EdgeInsets.all(20),
//       margin: EdgeInsets.fromLTRB(20, 100, 20, 10),
//       // BoxDecoration을 감싸는 Container 위젯에 color 선언이 되어 있다면
//       // 에러가 발생
//       decoration: BoxDecoration(),
//     );
//   }
// }