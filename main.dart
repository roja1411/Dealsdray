import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_project/login%20page.dart';
import 'package:new_project/splash_screen.dart';
import 'package:overlay_kit/overlay_kit.dart';

import 'constant/string.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());
}



class MyApp extends StatelessWidget {
  MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OverlayKit(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        transitionDuration: const Duration(milliseconds: 500),
        defaultTransition: Transition.leftToRight,
        theme: ThemeData(
          textTheme: TextTheme(
            bodySmall: GoogleFonts.robotoCondensed(),
            bodyMedium: GoogleFonts.robotoCondensed(fontSize: 14),
            bodyLarge: GoogleFonts.robotoCondensed(fontSize: 24),
            headlineLarge: GoogleFonts.robotoCondensed(),
            headlineMedium: GoogleFonts.robotoCondensed(),
          ),

          appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
              titleTextStyle: GoogleFonts.robotoCondensed(fontSize: 14,color: Colors.black)
          ),
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          // primaryColor: Colors.blue,
          inputDecorationTheme: InputDecorationTheme(
            border:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular((5.0),
              ),
            ),
            labelStyle: GoogleFonts.robotoCondensed(fontSize: 12),
            isDense: true,
            isCollapsed: true,
            contentPadding:  const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),

          ),

          colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
          useMaterial3: true,
        ),
        home:   SplashScreen(),

      ),
    );
  }
}




