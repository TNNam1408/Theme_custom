import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_dl/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppThemeCubit>(
        create: (_) => AppThemeCubit(),
        child: const MaterialApp(
          title: 'Flutter Demo',
          home: MyHomePage(title: 'Flutter Demo Home Page'),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<AppThemeCubit, CThemeMode>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          context.read<AppThemeCubit>().onChangedMThemeMode();
                        },
                        child: Text(
                          "Den",
                          style: TextStyle(color: AppTheme.of(context).text),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // BlocProvider.of<ThemeCubit>(context)
                          //     .toggleTheme(value: false);
                        },
                        child: Text("Trang"),
                      ),
                    ],
                  ),
                );
              },
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
