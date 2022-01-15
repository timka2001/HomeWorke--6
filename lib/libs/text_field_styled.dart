import 'package:flutter/material.dart';

class Text_field_styled extends StatelessWidget {
  const Text_field_styled({Key? key}) : super(key: key);
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
  get accountController => null;

  @override
  Widget build(BuildContext context) {
    return new Material(
        child: Padding(
      padding: EdgeInsets.only(top: 100, right: 20, left: 20),
      child: new TextFormField(
        controller: accountController,
        decoration: InputDecoration(
          helperText: "Поле для поиска заметок",
          labelText: "Search",
          labelStyle: TextStyle(color: Colors.purple),
          suffixIcon: Icon(
            Icons.search,
            color: Colors.purple,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(
              color: Colors.purple,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            gapPadding: 10.0,
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(
              color: Colors.purple,
              width: 2,
            ),
          ),
          hintText: "Введите значение",
        ),
      ),
    ));
  }
}
