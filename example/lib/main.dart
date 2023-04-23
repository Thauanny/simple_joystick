import 'package:flutter/material.dart';
import 'package:simple_joystick/simple_joystick.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: JoyStick(
          buttonsPadding: 10,
          size: 300,
          buttons: [
            //TODO: adicionar cor de fundo ao circulo e adicionar text ao button
            JoyStickItem(
              size: 70,
              index: 0,
              backgroundColor: Colors.blue[600]!,
              buttonIcon: Icons.keyboard_arrow_right_outlined,
              onTap: () {
                debugPrint('button  0');
              },
            ),
            JoyStickItem(
              size: 70,
              index: 1,
              backgroundColor: Colors.yellow[700]!,
              buttonIcon: Icons.keyboard_arrow_down_outlined,
              onTap: () {
                debugPrint('button  1');
              },
            ),
            JoyStickItem(
              size: 70,
              index: 2,
              backgroundColor: Colors.red[600]!,
              buttonIcon: Icons.keyboard_arrow_left_outlined,
              onTap: () {
                debugPrint('button  2');
              },
            ),
            JoyStickItem(
              size: 70,
              index: 3,
              backgroundColor: Colors.green[600]!,
              buttonIcon: Icons.keyboard_arrow_up_outlined,
              onTap: () {
                debugPrint('button  3');
              },
            ),
          ],
        ),
      ),
    );
  }
}
