import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly_flutter/constants/constants.dart';
import 'package:foodly_flutter/views/entrypoint.dart';
import 'package:get/get.dart';

Widget defaultHome =  MainScreen();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 825),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Foodly',
        theme: ThemeData(
          scaffoldBackgroundColor: kOffWhite,
          iconTheme: const IconThemeData(color: kDark),
          primarySwatch: Colors.grey,
        ),
        home: defaultHome,
      ),
    );
  }
}
