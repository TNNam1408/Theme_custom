import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseTheme {
  Color get bg;
  Color get text;
}

class ThemeDark extends BaseTheme {
  @override
  // TODO: implement bg
  Color get bg => Colors.red;

  @override
  // TODO: implement text
  Color get text => Colors.red;
}

class ThemeLight extends BaseTheme {
  @override
  // TODO: implement bg
  Color get bg => Colors.red;

  @override
  // TODO: implement text
  Color get text => Colors.white;
}

class AppTheme {
  static BaseTheme of(BuildContext context) {
    var mode = context.read<AppThemeCubit>().state;
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
