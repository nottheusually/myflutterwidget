import 'package:flutter/material.dart';

class PinCont extends StatefulWidget {
  const PinCont({super.key});

  @override
  State<PinCont> createState() => _PinContState();
}

class _PinContState extends State<PinCont> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
          )
        ],
      ) ,
    );
  }
}