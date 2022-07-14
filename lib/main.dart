import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/router/user_router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final userRouter = UserRouter();

  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: userRouter.defaultRouteParser(),
      routerDelegate: userRouter.delegate(),
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
