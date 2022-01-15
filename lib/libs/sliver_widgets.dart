import 'package:flutter/material.dart';

class Sliver_widgets extends StatelessWidget {
  const Sliver_widgets({Key? key}) : super(key: key);
  static const String _title = 'Flutter Code Sample';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return _buildWideContainers();
          } else {
            return _buildNormalContainer();
          }
        },
      ),
    );
  }

  Widget _buildNormalContainer() {
    return Container(
        height: 80.0,
        child: LayoutBuilder(builder: (context, constraints) {
          double _width = constraints.maxWidth;

          return ListView.builder(
              // the number of items in the list

              itemCount: 9,
              scrollDirection: Axis.horizontal,
              // display each item of the product list
              itemBuilder: (context, index) {
                return Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Container(
                      // In many cases, the key isn't mandatory
                      key: UniqueKey(),

                      width: 80,

                      color: Colors.amber[(index + 1) * 100],
                    ));
              });
        }));
  }

  Widget _buildWideContainers() {
    return Container(
        height: double.maxFinite,
        child: LayoutBuilder(builder: (context, constraints) {
          double _width = constraints.maxWidth;

          return ListView.builder(
              // the number of items in the list

              itemCount: 9,
              scrollDirection: Axis.vertical,
              // display each item of the product list
              itemBuilder: (context, index) {
                return Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Container(
                      // In many cases, the key isn't mandatory
                      key: UniqueKey(),

                      height: 200,
                      color: Colors.amber[(index + 1) * 100],
                    ));
              });
        }));
  }
}
