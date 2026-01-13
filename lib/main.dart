import 'package:bookly_app/core/helpers/constants/colors_constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: ColorsConstants.mainBackgroundColor,
        textTheme: GoogleFonts.montserratAlternatesTextTheme(
          ThemeData.dark().textTheme,
        ),
      ),
      routerConfig: AppRouter.router,
    );
  }
}
