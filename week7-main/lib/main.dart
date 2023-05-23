import 'package:flutter/material.dart';
import 'package:week7/common/const/colors.dart';
import 'package:week7/common/const/text.dart';
import 'package:week7/common/const/utils/data_utils.dart';
import 'package:week7/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '덕부름',
      theme: ThemeData(
        useMaterial3: false,
        fontFamily: SUITE,
        dialogBackgroundColor: WHITE,
        scaffoldBackgroundColor: WHITE,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: DataUtils.createMaterialColor(PRIMARY_COLOR),
        ).copyWith(
          primary: PRIMARY_COLOR,
          background: WHITE,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: false,
        fontFamily: SUITE,
        dialogBackgroundColor: WHITE,
        scaffoldBackgroundColor: WHITE,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: DataUtils.createMaterialColor(PRIMARY_COLOR),
        ).copyWith(
          primary: PRIMARY_COLOR,
          background: WHITE,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
