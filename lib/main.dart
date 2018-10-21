import 'package:flutter/material.dart';
import 'package:material_page_reveal/page_reveal.dart';
import 'package:material_page_reveal/pager_indicator.dart';
import 'pages.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Material Page Reveal',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        children: <Widget>[
          Page(
            viewModel: pages[0],
            percentVisable: 1.0,
          ),
          PageReveal(
            revealPercent: 0.1,
            child: Page(
              viewModel: pages[1],
              percentVisable: 1.0,
            ),
          ),
          PagerIndicator(
              viewModel:
                  PagerIndicatorViewModel(pages, 1, SlideDirection.none, 0.0)),
        ],
      ),
    );
  }
}
