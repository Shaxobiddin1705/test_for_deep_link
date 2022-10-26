import 'package:flutter/material.dart';

class DeepLinkOpenPage extends StatefulWidget {
  const DeepLinkOpenPage({Key? key}) : super(key: key);

  @override
  State<DeepLinkOpenPage> createState() => _DeepLinkOpenPageState();
}

class _DeepLinkOpenPageState extends State<DeepLinkOpenPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: Text('This is opened by deep link\nHi What is up bro?\nHow is it going on?',
            style: TextStyle(fontSize: 24, color: Colors.deepPurpleAccent)),
        ),
      ),
    );
  }
}
