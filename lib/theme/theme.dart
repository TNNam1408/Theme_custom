import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseTheme {
  Color get bg;
  Color get text;
}

class ThemeDark extends BaseTheme {
  @override
  // TODO: implement bg
  Color get bg => Colors.black;

  @override
  // TODO: implement text
  Color get text => Colors.yellow;
}

class ThemeLight extends BaseTheme {
  @override
  // TODO: implement bg
  Color get bg => Colors.white;

  @override
  // TODO: implement text
  Color get text => Colors.red;
}

class AppTheme {
  // static late BuildContext context;
  // static void init(BuildContext ctx) {
  // context = ctx;
  // }

  static BaseTheme of(BuildContext context) {
    //old ctx
    var mode = context.watch<AppThemeCubit>().state;
    return mode == CThemeMode.light ? ThemeDark() : ThemeLight();
  }
}

enum CThemeMode { dark, light }

class AppThemeCubit extends Cubit<CThemeMode> {
  AppThemeCubit() : super(CThemeMode.light);

  void onChangedMThemeMode() {
    if (state == CThemeMode.light) {
      emit(CThemeMode.dark);
    } else {
      emit(CThemeMode.light);
    }
  }
}
