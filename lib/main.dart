import 'package:flutter/material.dart';
void main() {
  runApp(const MainApp());
}
const double standardPadding = 32;
class MainApp extends StatefulWidget {
  const MainApp({super.key});  
  @override
  State<MainApp> createState() => _MainAppState();
}
class _MainAppState extends State<MainApp> {
  String inputValue = "Nocht nichts";
  List<String> sentMessages= [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(
                left: standardPadding, right: standardPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Hier soll das aus der Box rein"),
                const SizedBox(height: standardPadding),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String newValue) {
                    print("Der neue Wert ist: $newValue");
                    setState(
                      () {
                        inputValue = newValue;
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}