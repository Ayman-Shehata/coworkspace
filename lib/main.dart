import 'package:flutter/material.dart';

import 'views/cowork_home.dart';

void main() =>  runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
               '/': (context) =>  CoWorkHome(),

        '/second': (context) =>  CoWorkHome(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     // home: const MyHomePage(),
    );
  }
}
/*
// Within the `FirstScreen` widget
onPressed: () {
// Navigate to the second screen using a named route.
Navigator.pushNamed(context, '/second');
}*/
