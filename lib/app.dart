import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state/controller_binder/controller_binder.dart';
import 'package:getx_state/screen/home_page_screen.dart';

class StateManageWithGetX extends StatefulWidget {
  const StateManageWithGetX({super.key});

  @override
  State<StateManageWithGetX> createState() => _StateManageWithGetXState();
}

class _StateManageWithGetXState extends State<StateManageWithGetX> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBinder(),
      theme: ThemeData(elevatedButtonTheme: _elevatedButtonThemeData()),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

ElevatedButtonThemeData _elevatedButtonThemeData() {
  return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          padding: EdgeInsets.all(15),
          backgroundColor: Color(0XFF5EBDDC),
          foregroundColor: Colors.white,
          fixedSize: Size.fromWidth(150)));
}
