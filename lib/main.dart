import 'package:flutter/material.dart';
import 'package:flutter_gita_mobile_baning/screens/auth/check/confirm_screen.dart';
import 'package:flutter_gita_mobile_baning/screens/auth/check/confirm_screen_provider.dart';
import 'package:flutter_gita_mobile_baning/screens/auth/login/login_screen.dart';
import 'package:flutter_gita_mobile_baning/screens/auth/register/register_page.dart';
import 'package:flutter_gita_mobile_baning/screens/auth/register/register_provider.dart';
import 'package:flutter_gita_mobile_baning/screens/auth/splash/splash_page.dart';
import 'package:flutter_gita_mobile_baning/screens/auth/splash/splash_provider.dart';
import 'package:flutter_gita_mobile_baning/screens/home/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        SplashScreen.route: (context) {
          return ChangeNotifierProvider(
            create: (context) => SplashProvider(),
            builder: (context, child) {
              return const SplashScreen();
            },
          );
        },
    RegisterScreen.route: (context) {
          return ChangeNotifierProvider(
            create: (context) => RegisterProvider(),
            builder: (context, child) {
              return  RegisterScreen();
            },
          );
        },
        ConfirmScreen.route: (context) {
          return ChangeNotifierProvider(
            create: (context) => ConfirmProvider(),
            builder: (context, child) {
              return const ConfirmScreen();
            },
          );
        },
        HomePageScreen.route: (context) {
          return ChangeNotifierProvider(
            create: (context) => ConfirmProvider(),
            builder: (context, child) {
              return const HomePageScreen();
            },
          );
        },
        SignInScreen.route: (context) {
          return ChangeNotifierProvider(
            create: (context) => ConfirmProvider(),
            builder: (context, child) {
              return  SignInScreen();
            },
          );
        },
      },
      initialRoute: SplashScreen.route,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
