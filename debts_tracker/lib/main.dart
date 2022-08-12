import 'package:debts_tracker/add_new_widget.dart';
import 'package:flutter/material.dart';
import 'overview_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.red,
          scaffoldBackgroundColor: const Color(0xFF1E1E1E),
          inputDecorationTheme: const InputDecorationTheme(
            enabledBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(width: 2, color: Color.fromARGB(255, 90, 90, 90)),
            ),
            hintStyle: TextStyle(color: Colors.white),
          )),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "debts Tracker",
          style: TextStyle(fontSize: 25.0),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              OverviewWidget(),
              OverviewWidget(),
              OverviewWidget(),
              OverviewWidget(),
              AddNewWidget()
            ],
          ),
        ),
      ),
    );
  }
}
