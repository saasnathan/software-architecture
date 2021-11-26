import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Software architecture'),
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("The Design\nPatterns Catalog", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600)),
                Text("Some patterns categories", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300)),
              ],
            )),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Creational Patterns", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600))),
          Option('Factory Method', action: (){}),
          Option('Prototype', action: (){}),
          Option('Builder', action: (){}),
          Container(
            margin: EdgeInsets.only(top: 16),
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Structural Patterns", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600))),
          Option('Factory Method', action: (){}),
          Option('Prototype', action: (){}),
          Option('Builder', action: (){}),
          Container(
            margin: EdgeInsets.only(top: 16),
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Behavioral Patterns", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600))),
          Option('Factory Method', action: (){}),
          Option('Prototype', action: (){}),
          Option('Builder', action: (){})
          ],
      ),
    );
  }
}

class Option extends StatelessWidget {
  final String text;
  final Function() action;

  Option(this.text, {required this.action, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        padding: EdgeInsets.all(12),
        child: Text(text, style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w400
        ),),
      ),
    );
  }
}
