import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_page.dart';
import 'onboarding_page.dart';

class Deciding extends StatefulWidget {
  const Deciding({super.key});

  @override
  State<Deciding> createState() => _DecidingState();
}

class _DecidingState extends State<Deciding> {
  Future<bool>? showIntro;

  @override
  void initState() {
    super.initState();
    showIntro = checkIntro();
  }

  Future<bool> checkIntro() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool showIntroo = prefs.getBool('showIntro') ?? true;
    if (showIntroo) {
      await prefs.setBool('showIntro', false);
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: showIntro,
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        if (snapshot.hasData && snapshot.data!) {
          return OnboardingPage();
        } else {
          return OnboardingPage();
        }
      },
    );
  }
}
