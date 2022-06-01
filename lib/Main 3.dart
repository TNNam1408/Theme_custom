import 'package:flutter/material.dart';
import 'package:theme_dl/theme/theme.dart';

class Main3 extends StatelessWidget {
  const Main3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppTheme.of(context).bg,
        child: Center(
          child: Text(
            "Main 3",
            style: TextStyle(color: AppTheme.of(context).text),
          ),
        ),
      ),
    );
  }
}
