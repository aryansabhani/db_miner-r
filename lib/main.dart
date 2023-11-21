import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/screen/add_screen.dart';
import 'package:untitled/screen/home_screen.dart';
import 'package:untitled/screen/readQuotes_screen.dart';
import 'package:untitled/screen/splash_screen.dart';
import 'package:untitled/screen/tab_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        theme: ThemeData(
            useMaterial3: true
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(p0) => SplaceScreen(),
          'home':(p0) => HomeScreen(),
          'addcat':(p0) => AddCategoryScreen(),
          'tab':(p0) => TabScreen(),
          'read':(p0) => ReadScreen(),
        },
      ),
    ),
  );
}