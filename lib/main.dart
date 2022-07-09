import 'package:flutter/material.dart';

//PAGES
import 'pages/page_layout.dart';
import 'pages/songpage.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Lato"),
      debugShowCheckedModeBanner: false,
      title: "Splital",
      home: const PageLayout(),
    );
  }
}
