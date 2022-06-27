import 'package:flutter/material.dart';
import './texts.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Texts'),
          backgroundColor: Colors.deepOrange[900],
        ),
        body: App(),
      ),
    ),
  );
}





class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int textIndex = 0;
  void changeText() {
    setState(() {
      textIndex++;
      if (textIndex == 5) {
        textIndex = 0;
      }
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Center(
            child: Text(texts[textIndex],
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center),
          ),
          SizedBox(
            height: 35,
          ),
          ElevatedButton(
            onPressed: () {
              changeText();
            },
            child: const Text('next question'),
          ),
        ],
      ),
    );
  }
}
