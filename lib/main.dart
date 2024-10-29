import 'package:flutter/material.dart';
void main() {
  runApp(const MainApp());
}
const double stadartPadding = 32;
const verticalSpacing = SizedBox(
  height: 32,
);
const String userName = "";
const String userPassword = "ts6161";
class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State<MainApp> createState() => _MainAppState();
}
class _MainAppState extends State<MainApp> {
  // String inputValue = "Noch nichts";
  // List<String> sentMessages = [];
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              right: stadartPadding,
              left: stadartPadding,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(usernameController.text),
                // Expanded(
                //   child: ListView.builder(
                //     itemCount: sentMessages.length,
                //     itemBuilder: (context, index) => Card(
                //       child: Text(sentMessages[index]),
                //     ),
                //   ),
                // ),
                // Text("Eingabe vom Nutzer: $inputValue"),
                const SizedBox(height: stadartPadding),
                TextField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  // onChanged: (String newValue) {
                  //   print("Der neue wer ist: $newValue");
                  //   setState(() {
                  //     inputValue = newValue;
                  //   });
                  // },
                ),
                verticalSpacing,
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                verticalSpacing,
                OutlinedButton(
                  onPressed: () {
                    print(usernameController.text);
                    if (usernameController.text == userName &&
                        passwordController.text == userPassword) {
                      // Navigator.of(context).push(MaterialPageRoute(builder:MainScreen(),),);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Trabzon"),
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Login succes"),
                        ),
                      );
                    }
                    setState(() {});
                    // controller.clear();
                  },
                  child: const Text("Add"),
                ),
                // OutlinedButton(
                //   onPressed: () {
                //     setState(() {
                //       sentMessages.insert(0, inputValue);
                //     });
                //   },
                //   child: const Text("Add Text"),
                // ),
                verticalSpacing
              ],
            ),
          ),
        ),
      ),
    );
  }
}


























