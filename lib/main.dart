import 'package:codekaze_free_ui_kit/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  await MainSetup.setup();

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    defaultTransition: Transition.fade,
    theme: ThemeData(
      textTheme: GoogleFonts.poppinsTextTheme(),
      primaryColor: Colors.red[300],
      primarySwatch: Colors.red,
      primaryIconTheme: const IconThemeData.fallback().copyWith(
        color: Colors.black,
      ),
      accentIconTheme: const IconThemeData.fallback().copyWith(
        color: Colors.black,
      ),
      iconTheme: const IconThemeData.fallback().copyWith(
        color: Colors.black,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
      ),
      primaryTextTheme: TextTheme(
        headline6: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
    home: getHome(),
  ));
}

Widget getHome() {
<<<<<<< HEAD
  return ChatView();
=======
  return DashboardView();
>>>>>>> 02d5792e0dddbb211294ba26fb158c9bc4c8e518
  // return MainDashboardView();
}
