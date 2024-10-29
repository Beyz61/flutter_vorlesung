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
// Speichert den Wert des TextFieles 
final TextEditingController conroller= TextEditingController();
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
                 Text(conroller.text),
                const SizedBox(height: standardPadding),
                TextField(
                  controller: conroller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                  OutlinedButton(onPressed: () {
                    print(conroller.text);
                    setState(() {});
                  },
                  child: const Text("Text setzen"),  
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}