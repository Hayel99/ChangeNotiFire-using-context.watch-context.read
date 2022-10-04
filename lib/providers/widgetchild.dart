import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:three/screens/home.dart';

class WidgetChild extends StatefulWidget {
  WidgetChild({Key? key}) : super(key: key);

  @override
  State<WidgetChild> createState() => _WidgetChildState();
}

class _WidgetChildState extends State<WidgetChild> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Center(
        child: Text(
          "${context.watch<Model>().name}",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          onPressed: () {
            context.read<Model>().changeName();
          },
          child: Text(
            "Do Something",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ))
    ]);
  }
}
