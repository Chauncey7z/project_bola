import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_aplikasi_bola/data/theme.dart';
import 'package:project_aplikasi_bola/routes/routes.dart';

void main() {
  // runApp(MaterialApp(
  //   title: "Soccer Scorer",
  //   theme: colorThemeDataCustom,
  //   themeMode: ThemeMode.light,
  //   home: MyApp(),
  // ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Soccer Score',
      theme: colorThemeDataCustom,
      themeMode: ThemeMode.light,
      getPages: AppRoutes.appRoutes(),
    );
  }
}



// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   
// }
