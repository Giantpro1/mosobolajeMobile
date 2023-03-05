import 'package:mosobolaje/login_page.dart';
import 'package:mosobolaje/utils/appStyle.dart';
import 'package:flutter/material.dart';

// import 'dashboard.dart';

void main() {
  runApp(const MosobolajeEstate());
}

class MosobolajeEstate extends StatelessWidget {
  const MosobolajeEstate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Styles.white,
        ),
        appBarTheme: AppBarTheme(
          elevation: 1,
          color: Styles.white,
          titleTextStyle: const TextStyle(color: Colors.black),
          iconTheme: IconThemeData(
            color: Styles.black,
          ),
        ),
      ),
      darkTheme: ThemeData.dark(), // standard dark theme
      themeMode: ThemeMode.system, // device controls theme
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> refreshPage() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: refreshPage,
      child: const LoginPage(),
    );
  }
}
