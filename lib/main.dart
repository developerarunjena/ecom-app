import 'package:ecom/config/app_router.dart';
import 'package:ecom/screens/home/home_screens.dart';
import 'package:ecom/themes/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zero To Hero',
      theme: themeData(),
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
      home: HomeScreen(),
    );
  }
}
