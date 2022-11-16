import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'constants.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType){
      return MaterialApp(
        title: 'Expense Manager',
        theme: ThemeData(
          scaffoldBackgroundColor: kScaffoldColor,
          appBarTheme: AppBarTheme(
            backgroundColor: kPrimaryColor,
            iconTheme: IconThemeData(
              size: 23.sp,
              color: kSecondaryColor,
            ),
          ),
          iconTheme: IconThemeData(
            size: 23.sp,
            color: kSecondaryColor,
          ),
        ),
        home: HomePage(),
      );
    });
  }
}
