import 'package:flutter/material.dart';
import 'atividade_01/global_key.dart';
import 'atividade_02/page_view.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Global Key',
      debugShowCheckedModeBanner: false,
      //Atividade 01
      // home: AtividadeGlobalKey(),

      //Atividade 02
      home: AtividadePageView(),
    );
  }
}
