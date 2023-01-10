import 'package:flutter/material.dart';
import 'package:food_app/screens/home/Home.dart';
import 'package:food_app/widgets/buttom_bar.dart';
import 'package:get/get.dart';

import 'utils/dependiencies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStatefulWidget(),
    );
  }
}
