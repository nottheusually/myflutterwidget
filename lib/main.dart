import 'package:flutter/material.dart';
import 'package:backupcash/dynamic/create_virtual_acc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffF5F5F5)),
        useMaterial3: true,
      ),
      home: const CreateVirAcc(),
    );
  }
}
