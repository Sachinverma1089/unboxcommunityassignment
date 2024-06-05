import 'package:assignmentondc/views/ui/order_history.dart';
import 'package:assignmentondc/views/ui/payment.dart';
import 'package:assignmentondc/views/ui/unbox.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black12),
      home: UnBoxPage(),
    );
  }
}
