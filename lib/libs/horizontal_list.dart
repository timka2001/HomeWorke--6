import 'package:flutter/material.dart';

class Horizontal_list extends StatelessWidget {
  const Horizontal_list({Key? key}) : super(key: key);
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
        body: ListView.separated(
      itemCount: 100,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('$index'),
        );
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    ));
  }
}
