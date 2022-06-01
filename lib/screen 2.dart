import 'package:flutter/material.dart';
import 'package:theme_dl/Main%203.dart';
import 'package:theme_dl/theme/theme.dart';

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
        color: AppTheme.of(context).bg,
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Main3()));
            },
            child: Text(
              "Main 2",
              style: TextStyle(fontSize: 100, color: AppTheme.of(context).text),
            ),
          ),
        ),
      ),
    );
  }
}
