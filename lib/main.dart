import 'package:chifood/ui/pages/home.dart';
import 'package:chifood/ui/pages/order.dart';
import 'package:chifood/ui/pages/orderConfirmation.dart';
import 'package:chifood/ui/pages/orderFinish.dart';
import 'package:chifood/ui/pages/splash.dart';
import 'package:chifood/ui/widgets/customDrawer.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor:  Color(0xffffd31d)
      ),
      home: OrderConfirmation(),
      routes: <String,WidgetBuilder>{
        '/HomePage':(BuildContext ctx)=>new HomePage(),
        '/OrderFinish':(BuildContext ctx)=>OrderFinish(),
        '/OrderConfirm':(BuildContext ctx)=>OrderConfirmation()
      },
    );
  }
}

