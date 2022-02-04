import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

bool isDark = false;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.purple,
          brightness: isDark ? Brightness.light : Brightness.dark,
          textTheme:
              TextTheme(bodyText2: TextStyle(fontSize: 30, color: Colors.red))),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ThemeButton'),
        ),
        body: Column(
          children: [
            Text('ThemeData'),
            TextField(),
            ElevatedButton(
              onPressed: () {},
              child: Text('Text'),
            ),
            Center(
              child: Switch(
                  value: isDark,
                  onChanged: (value) {
                    setState(() {
                      isDark = value;
                    });
                    print(isDark);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
