import 'package:flutter/material.dart';

void main() => runApp(const SampleApp());

class SampleApp extends StatefulWidget {
  const SampleApp({Key? key}) : super(key: key);

  @override
  State<SampleApp> createState() => _SampleAppState();
}

class _SampleAppState extends State<SampleApp> {
  Color bg = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("hello there"),
        ),
        body: Container(
          color: bg,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("RED"),
                onPressed: () {
                  setState(() {
                    bg = Colors.red;
                  });
                },
              ),
              ElevatedButton(
                child: const Text("BLUE"),
                onPressed: () {
                  setState(() {
                    bg = Colors.blue;
                  });
                },
              ),
              ElevatedButton(
                child: const Text("GREEN"),
                onPressed: () {
                  setState(() {
                    bg = Colors.green;
                  });
                },
              ),
              ElevatedButton(
                child: const Text("RESET"),
                onPressed: () {
                  setState(() {
                    bg = Colors.white;
                  });
                },
              ),
            ],
          ),
        ))
    );
  }
}
