import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:three/providers/widgetchild.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Model(),
      child: Scaffold(
          appBar: AppBar(
            title: Text("Provider"),
            backgroundColor: Colors.blue,
            automaticallyImplyLeading: false,
            centerTitle: true,
          ),
          body: WidgetChild()),
    );
  }
}

class Model extends ChangeNotifier {
  var name = "Wlcome";
  changeName() {
    name = "Hayel Al Hulayel";
    notifyListeners();
  }

}
