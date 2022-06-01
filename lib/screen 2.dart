import 'package:flutter/material.dart';

class Main2 extends StatefulWidget {
  const Main2({Key? key}) : super(key: key);

  @override
  State<Main2> createState() => _Main2State();
}

class _Main2State extends State<Main2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: Center(
          child: Text(
            "Main 2",
            style: TextStyle(
                fontSize: 100, color: Theme.of(context).backgroundColor),
          ),
        ),
      ),
    );
  }
}
